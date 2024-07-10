import {
  Body,
  Controller,
  Get,
  HttpException,
  HttpStatus,
  Post,
  Request,
  Response,
  Res,
  UseGuards,
  ParseIntPipe,
  Put,
  Param,
  Delete,
  UnauthorizedException,
  UploadedFile,
  UseInterceptors,
  Query,
  BadRequestException,
} from "@nestjs/common";
import * as jwt from "jsonwebtoken";
import * as CryptoJS from "crypto-js";
import { WinstonLogger } from "@payk/nestjs-winston";
import { AuthService } from "./auth.service";
import * as config from "config";
import { AuthGuard } from "@nestjs/passport";
import {
  ApiBody,
  ApiOkResponse,
  ApiQuery,
  ApiTags,
  ApiUnauthorizedResponse,
  ApiParam,
  ApiResponse,
} from "@nestjs/swagger";
import { JwtAuthGuard } from "./jwt-auth.guard";
import { LocalAuthGuard } from "./local-auth.guard";
import { IRegisterBody, IUpdateBody } from "./interfaces/auth.interfaces";
import { ExtractJwt } from "passport-jwt";
import {
  TokenDto,
  AuthUserDtoDto,
  authRegisterDto,
  authUserDto,
  authUpdateDto,
} from "./dto/AuthUserDto.dto";
import { FirestorageService } from "../firestorage/firestorage.service";
import { FileInterceptor } from "@nestjs/platform-express";
import * as nodemailer from "nodemailer";

@ApiTags("Auth")
@Controller("auth")
export class AuthController {
  private readonly logger = new WinstonLogger(AuthController.name);
  constructor(
    private authService: AuthService,
    private firestorageService: FirestorageService
  ) {}

  @UseGuards(LocalAuthGuard)
  @Post("login")
  @ApiParam({ name: "userOrEmail", required: true })
  @ApiParam({ name: "password", required: true })
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 401, description: "Incorrect Data" })
  @ApiResponse({
    status: 200,
    description: "Authentication successful",
    type: TokenDto,
  })
  async login(@Request() req, @Response() res) {
    res.status(HttpStatus.OK).json({ token: req.user });
  }

  @UseGuards(JwtAuthGuard)
  @Get("validate-token")
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 401, description: "Not authenticated" })
  @ApiResponse({ status: 200, description: "Validated Token", type: TokenDto })
  async validateToken(@Request() req, @Response() res) {
    const token = ExtractJwt.fromAuthHeaderAsBearerToken();
    const data: any = jwt.decode(token(req));

    const response: any = await this.authService.loginUsername(
      data.userData.username
    );
    if (!res) {
      throw new UnauthorizedException();
    }

    const newToken = await this.generateToken(response);
    return res.status(HttpStatus.OK).json({ token: newToken });
  }

  // @UseGuards(JwtAuthGuard)
  @Post("register")
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 401, description: "Not authenticated" })
  @ApiResponse({ status: 400, description: "Incorrect Data" })
  @ApiResponse({
    status: 200,
    description: "Correct Registration",
    type: authUserDto,
  })
  @UseInterceptors(FileInterceptor("image"))
  async register(
    @Body() req: authRegisterDto,
    @UploadedFile() file: Express.Multer.File,
    @Response() res
  ) {
    const registerBody: IRegisterBody = req;
    let fileUploaded = await this.uploadFile(file);
    let user = await this.authService.register(registerBody, fileUploaded);

    await this.sendRegistrationEmail(user.email, user.username);

    const token = await this.generateToken(user);
    return res.status(HttpStatus.OK).json({ token: token });
  }

  @UseGuards(JwtAuthGuard)
  @Put("update/:id")
  @ApiParam({ name: "id", required: true, description: "Record Identifier" })
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 401, description: "Not authenticated" })
  @ApiResponse({ status: 400, description: "Incorrect Data" })
  @ApiResponse({ status: 404, description: "Record not found" })
  @ApiResponse({
    status: 200,
    description: "Updated Registration",
    type: authUserDto,
  })
  @UseInterceptors(FileInterceptor("image"))
  async update(
    @Param("id") id: number | string,
    @Body() req: authUpdateDto,
    @UploadedFile() file: Express.Multer.File
  ) {
    const updateBody: IUpdateBody = req;
    let fileUploaded = await this.uploadFile(file);
    return await this.authService.update(id, updateBody, fileUploaded);
  }

  @UseGuards(JwtAuthGuard)
  @Delete("delete/:id")
  @ApiParam({ name: "id", required: true, description: "Record Identifier" })
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 401, description: "Not authenticated" })
  @ApiResponse({ status: 404, description: "Record not found" })
  @ApiResponse({ status: 200, description: "Record Removed" })
  async delete(@Param("id") id: number | string) {
    return await this.authService.delete(id);
  }

  @Put("update-device-token/:id")
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 400, description: "Incorrect Data" })
  @ApiResponse({ status: 200, description: "Success" })
  async updateDeviceToken(@Param("id") id: number, @Body() req) {
    if (!req.token)
      throw new BadRequestException(["token is required and can not be empty"]);
    return await this.authService.updateDeviceToken(id, req.token);
  }

  @Post("forgot-password")
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 400, description: "Incorrect Data" })
  @ApiResponse({ status: 200, description: "Success" })
  async rememberPass(@Body() req) {
    return await this.authService.forgotPassword(req.email);
  }

  @Get("validate-recovery-token")
  @ApiQuery({ name: "token", required: true, description: "Remember Token" })
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 400, description: "Incorrect Data" })
  @ApiResponse({ status: 200, description: "Success" })
  async deleteToken(@Query("token") token: string) {
    return await this.authService.validateRecoveryToken(token);
  }

  @Put("update-password/:id")
  @ApiParam({ name: "id", required: true, description: "Record Identifier" })
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({ status: 400, description: "Incorrect Data" })
  @ApiResponse({ status: 200, description: "Success" })
  async updatePassToken(@Body() req, @Param("id", ParseIntPipe) id: number) {
    return await this.authService.updatePassToken(id, req);
  }


  @Post("confirm-email/:id")
  @ApiParam({ name: 'id', required: true, description: 'User Identifier' })
  @ApiResponse({ status: 200, description: 'Email confirmed successfully' })
  @ApiResponse({ status: 400, description: 'Invalid or expired confirmation code' })
  @ApiResponse({ status: 404, description: 'User not found' })
  async confirmEmail(@Param('id') id: number, @Body() body: { code: string }, @Response() res) {
    if (!body.code) {
      throw new BadRequestException('Confirmation code is required');
    }

    const user = await this.authService.confirmEmail(id, body.code);
    const token = await this.generateToken(user);
    return res.status(HttpStatus.OK).json({ token: token });

  }

  @UseGuards(JwtAuthGuard)
  @Put("generate-email-confirmation-code/:id")
  @ApiParam({ name: 'id', required: true, description: 'User Identifier' })
  @ApiResponse({ status: 200, description: 'Email confirmation code generated successfully' })
  @ApiResponse({ status: 401, description: 'Not authenticated' })
  @ApiResponse({ status: 404, description: 'User not found' })
  async generateEmailConfirmationCode(@Param('id') id: number) {
    return await this.authService.generateEmailConfirmationCode(id);
  }

  async uploadFile(file) {
    if (file) {
      let tm = Date.now();
      return await this.firestorageService.uploadFile("users", file, tm);
    } else {
      return false;
    }
  }

  async generateToken(data) {
    return jwt.sign(
      {
        userData: data,
      },
      config.get("keys.jwtKey"),
      {
        expiresIn: config.get("globals.expJWT"),
      }
    );
  }

  async sendRegistrationEmail(email: string, username: string): Promise<void> {
    const transporter = nodemailer.createTransport({
      service: "gmail",
      auth: {
        user: "muyfadu@gmail.com",
        pass: "mmho lkyt hmyf owju",
      },
    });

    const mailOptions = {
      from: "muyfadu@gmail.com",
      to: email,
      subject: "Registro Exitoso",
      html: this.generateRegistrationEmailTemplate(username, email),
    };

    try {
      await transporter.sendMail(mailOptions);
    } catch (error) {
      console.error("Error al enviar el correo electrónico:", error);
      throw new BadRequestException(
        "Error al enviar el correo electrónico. Por favor, inténtalo de nuevo.",
        error
      );
    }
  }

  private generateRegistrationEmailTemplate(
    username: string,
    email: string
  ): string {
    return `
      <html>
        <body>
          <h1>Bienvenido a muyfadu</h1>
          <p>¡Hola ${username}!</p>
          <p>Tu registro ha sido exitoso. Ahora eres parte de nuestra comunidad.</p>
          <p>Detalles de la cuenta:</p>
          <ul>
            <li><strong>Usuario:</strong> ${username}</li>
            <li><strong>Email:</strong> ${email}</li>
          </ul>
          <p>Gracias por unirte a nosotros. ¡Esperamos que disfrutes de la aplicación!</p>
          <p>Si no te registraste en nuestra aplicación, puedes ignorar este correo electrónico.</p>
          <p>¡Gracias!</p>
        </body>
      </html>
    `;
  }
}
