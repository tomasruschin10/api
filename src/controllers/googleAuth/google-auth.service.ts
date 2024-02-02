import { Injectable, HttpService } from '@nestjs/common';
import { AxiosResponse } from 'axios';
import { map } from 'rxjs/operators';

@Injectable()
export class GoogleAuthService {
  constructor(private readonly httpService: HttpService) {}

  async exchangeAuthorizationCode(code: string): Promise<string> {
    const googleTokenEndpoint = 'https://oauth2.googleapis.com/token';
    const clientId = '1044573282337-d651lo7degej029ca6vh2itbrrssblfm.apps.googleusercontent.com';
    const clientSecret = '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';
    const redirectUri = 'muyfaduapp://google-auth-callback';

    const requestBody = {
      code,
      client_id: clientId,
      client_secret: clientSecret,
      redirect_uri: redirectUri,
      grant_type: 'authorization_code',
    };

    const response = await this.httpService
      .post(googleTokenEndpoint, requestBody)
      .pipe(map((res: AxiosResponse) => res.data))
      .toPromise();

    return response.access_token;
  }

  async getUserInfo(accessToken: string): Promise<any> {
    const googleUserInfoEndpoint = 'https://www.googleapis.com/userinfo/v2/me';

    const response = await this.httpService
      .get(googleUserInfoEndpoint, {
        headers: {
          Authorization: `Bearer ${accessToken}`,
        },
      })
      .pipe(map((res: AxiosResponse) => res.data))
      .toPromise();

    return response;
  }
}
