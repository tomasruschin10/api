import { Controller, Post, Body } from '@nestjs/common';
import { GoogleAuthService } from './google-auth.service';

@Controller('auth/google')
export class GoogleAuthController {
  constructor(private readonly authService: GoogleAuthService) {}

  @Post()
  async exchangeAuthorizationCode(@Body('code') code: string): Promise<any> {
    const accessToken = await this.authService.exchangeAuthorizationCode(code);
    const userInfo = await this.authService.getUserInfo(accessToken);
    return { accessToken, userInfo };
  }
}
