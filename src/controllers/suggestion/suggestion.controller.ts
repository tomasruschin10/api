import {
  Controller,
  Post,
  Body,
  Headers,
  HttpStatus,
  UseGuards,
} from "@nestjs/common";
import { ApiResponse, ApiTags } from "@nestjs/swagger";
import { SuggestionService } from "./suggestion.service";
import { JwtAuthGuard } from "../auth/jwt-auth.guard";
import * as jwt from "jsonwebtoken";

@ApiTags('Suggestion')
@Controller("suggestion")
export class SuggestionController {
  constructor(private readonly suggestionService: SuggestionService) {}

  @UseGuards(JwtAuthGuard)
  @Post("submit")
  @ApiResponse({ status: 500, description: "Server Error" })
  @ApiResponse({
    status: 201,
    description: "Suggestion submitted successfully",
  })
  async submitSuggestion(
    @Headers() headers,
    @Body() body: { suggestion: string }
  ) {
    const data: any = jwt.decode(headers.authorization.replace("Bearer ", ""));
    const userEmail = data.userData.email;

    const { suggestion } = body;

    await this.suggestionService.sendSuggestionEmail(userEmail, suggestion);

    return { message: "Suggestion submitted successfully" };
  }
}
