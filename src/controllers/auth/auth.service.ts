import {
  HttpStatus,
  Injectable,
  HttpException,
  BadRequestException,
} from "@nestjs/common";
import { WinstonLogger } from "@payk/nestjs-winston";
import { UserRepository } from "src/modules/database/repositories/userRepository.service";
import * as bcrytp from "bcrypt";
import * as config from "config";
import { IRegisterBody, IUpdateBody } from "./interfaces/auth.interfaces";
import { UserRoleRepository } from "src/modules/database/repositories/userRoleRepository.service";
import { ImageRepository } from "src/modules/database/repositories/imageRepository.service";
import { FirestorageService } from "../firestorage/firestorage.service";
import { MailerService } from "@nestjs-modules/mailer";
import { MailPasswordHtml } from "src/utils/html/mail_password";
import { MailPasswordCodeHtml } from "src/utils/html/mail_password_code";
import * as crypto from "crypto";
import * as nodemailer from "nodemailer";

@Injectable()
export class AuthService {
  private readonly logger = new WinstonLogger(AuthService.name);

  constructor(
    private readonly userRepository: UserRepository,
    private readonly userRoleRepository: UserRoleRepository,
    private readonly imageRepository: ImageRepository,
    private mailerService: MailerService,
    private mailPasswordHtml: MailPasswordHtml,
    private mailPasswordCodeHtml: MailPasswordCodeHtml,
    private firestorageService: FirestorageService
  ) { }

  async login(userOrEmail: string, password: string) {
    const user = await this.userRepository.findUsername(userOrEmail);
    if (!!user) {
      const validatePass = await bcrytp.compare(password, user.password);
      if (validatePass) {
        return user;
      }
    }
    return false;
  }
  async loginUsername(userOrEmail: string) {
    const user = await this.userRepository.findUsername(userOrEmail);
    if (!!user) {
      return user;
    }
    return false;
  }

  async findUserByEmail(email: string) {
    const user = await this.userRepository.findUsername(email);
    return user;
  }

  async generateEmailConfirmationCode(userId: number) {
    const user = await this.userRepository.findById(userId);

    if (!user) {
      throw new Error('Usuario no encontrado');
    }

    if (user.isConfirm) {
      return { message: "El correo electrónico ya está confirmado" };
    }

    const code = Math.floor(100000 + Math.random() * 900000).toString();
    await this.userRepository.update(userId, {
      emailConfirmationCode: code,
      emailConfirmationCodeGeneratedAt: new Date(),
    });

    const transporter = nodemailer.createTransport({
      service: "gmail",
      auth: {
        user: "muyfadu@gmail.com",
        pass: "mmho lkyt hmyf owju",
      },
    });

    const mailOptions = {
      from: "muyfadu@gmail.com",
      to: user.email,
      subject: "Confirmá tu email",
      html: `
        <html>
        <body>
          <h1>Código para confirmar mail</h1>
          <p>¡Hola este es tu código para confirmar!</p>
          <table>
          <tr>
            ${code
          .split("")
          .map((letter) => `<td>${letter}</td>`)
          .join("")}
          </tr>
        </table>
          <p>Si no lo solicitaste, puedes ignorar este correo electrónico.</p>
          <p>¡Gracias!</p>
        </body>
      </html>
      `,
    };

    try {
      await transporter.sendMail(mailOptions);
    } catch (error) {
      throw new BadRequestException(
        "Error al enviar el correo electrónico. Por favor, inténtalo de nuevo.",
        error
      );
    }

    return { message: "Código de confirmación enviado" };
  }


  async confirmEmail(userId: number, code: string) {
    const user = await this.userRepository.findById(userId);
    if (!user) {
      throw new BadRequestException('User not found');
    }

    if (user.emailConfirmationCode !== code) {
      throw new BadRequestException('Invalid confirmation code');
    }

    const now = new Date();
    const expirationTime = 10 * 60 * 1000;
    if (now.getTime() - new Date(user.emailConfirmationCodeGeneratedAt).getTime() > expirationTime) {
      throw new BadRequestException('Confirmation code expired');
    }

    await this.userRepository.update(userId, {
      isConfirm: true,
      emailConfirmationCode: null,
      emailConfirmationCodeGeneratedAt: null,
    });


    const transporter = nodemailer.createTransport({
      service: "gmail",
      auth: {
        user: "muyfadu@gmail.com",
        pass: "mmho lkyt hmyf owju",
      },
    });

    const mailOptions = {
      from: "muyfadu@gmail.com",
      to: user.email,
      subject: "Email confirmado",
      html: `
      <html>
      <body>
        <h1>Email confirmado con éxito</h1>
        <p>¡Hola este mail es para avisarte que tu email fue confirmado con éxito!</p>
        <table>
      </table>
        <p>Si no fuiste tú, puedes contactarnos.</p>
        <p>¡Gracias!</p>
      </body>
    </html>
    `,
    };

    try {
      await transporter.sendMail(mailOptions);
    } catch (error) {
      throw new BadRequestException(
        "Error al enviar el correo electrónico. Por favor, inténtalo de nuevo.",
        error
      );
    }
    const updatedUser = await this.userRepository.findById(userId);

    return updatedUser;
  }

  async register(registerData: IRegisterBody | any, image) {
    if (registerData.google_user) {
      const existingGoogleUser =
        await this.userRepository.findUserByGoogleEmail(
          registerData.email,
          registerData.google_user
        );

      if (existingGoogleUser) {
        throw new BadRequestException(["El email de Google ya está en uso"]);
      }

      registerData.image_id = image
        ? (await this.imageRepository.create(image)).id
        : 1;
      const user = await this.userRepository.register(registerData);
      await this.userRoleRepository.saveUserRole(user.id, registerData.role_id);

      if (!registerData.uid) {
        await this.update(user.id, { uid: user.id }, null);
      }

      return await this.userRepository.findById(user.id);

    } else if (registerData.apple_user) {
      const existingAppleUser =
        await this.userRepository.findUserByAppleEmail(
          registerData.email,
          registerData.apple_user
        );

      if (existingAppleUser) {
        throw new BadRequestException(["El email de Apple ya está en uso"]);
      }

      registerData.image_id = image
        ? (await this.imageRepository.create(image)).id
        : 1;
      const user = await this.userRepository.register(registerData);
      await this.userRoleRepository.saveUserRole(user.id, registerData.role_id);

      if (!registerData.uid) {
        await this.update(user.id, { uid: user.id }, null);
      }
      return await this.userRepository.findById(user.id);

    } else {
      const emailInUse = await this.userRepository.findUsername(
        registerData.email
      );
      const usernameInUse = await this.userRepository.findUsername(
        registerData.username
      );

      if (emailInUse) {
        throw new BadRequestException(["El email ya está en uso"]);
      }

      if (usernameInUse) {
        throw new BadRequestException(["El usuario ya está en uso"]);
      }

      registerData.image_id = image
        ? (await this.imageRepository.create(image)).id
        : 1;
      const user = await this.userRepository.register(registerData);
      await this.userRoleRepository.saveUserRole(user.id, registerData.role_id);

      if (!registerData.uid) {
        await this.update(user.id, { uid: user.id }, null);
      }

      return await this.userRepository.findById(user.id);
    }
  }

  async update(id: number | string, request: IUpdateBody | any, file) {
    let user = await this.userRepository.update(id, request);

    if (file) {
      user.image_id != 1 ? await this.deleteFirebase(user.image_id) : null;

      if (user.image_id && user.image_id != 1) {
        await this.imageRepository.update(user.image_id, file);
      } else {
        let img = await this.imageRepository.create(file);
        user = await this.userRepository.update(id, { image_id: img.id });
      }
    }

    return await this.userRepository.findById(id);
  }

  async updateDeviceToken(id: number, token) {
    await this.userRepository.update(id, { device_token: token });
    return await this.userRepository.findById(id);
  }

  async delete(id: number | string) {
    const user = await this.userRepository.delete(id);
    user.image_id != 1 ? await this.deleteFirebase(user.image_id) : null;

    return { statusCode: 200, message: "removed" };
  }

  async deleteFirebase(image_id) {
    let image = await this.imageRepository.getById(image_id);

    image ? await this.firestorageService.remove(image.name) : null;
    return true;
  }

  async forgotPassword(email) {
    let user = await this.userRepository.findUsername(email);
    if (!user)
      throw new HttpException("No existe usuario", HttpStatus.NOT_FOUND);
    let date = new Date().toLocaleString("es", {
      day: "numeric",
      month: "long",
      year: "numeric",
    });

    let token;

    if (user.userRole[0].role_id == 2) {
      token = (Math.random() + 1)
        .toString(36)
        .substring(7)
        .toUpperCase()
        .substring(0, 5);
    } else {
      token = await bcrytp.hash(`remember${email}${Date.now()}`, 12);
    }

    await this.userRepository.update(user.id, { remember_token: token });
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
      subject: "Código de reinicio de contraseña",
      html: `
      <html>
      <body>
        <h1>Código de recuperación de contraseña</h1>
        <p>¡Hola este es tu código de recuperación!</p>
        <table>
        <tr>
          ${token
          .split("")
          .map((letter) => `<td>${letter}</td>`)
          .join("")}
        </tr>
      </table>
        <p>Si no lo solicitaste, puedes ignorar este correo electrónico.</p>
        <p>¡Gracias!</p>
      </body>
    </html>
    `,
    };

    try {
      await transporter.sendMail(mailOptions);
    } catch (error) {
      console.error("Error al enviar el correo electrónico:", error);
    }
    return token;
  }

  async validateRecoveryToken(token) {
    return await this.userRepository.validateRecoveryToken(token);
  }

  async updatePassToken(id, request) {
    if (request.password != request.repeat_password)
      throw new BadRequestException(["Contraseñas no coinciden"]);

    return await this.userRepository.updatePassToken(id, request.password);
  }
}
