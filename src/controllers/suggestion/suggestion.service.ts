import { Injectable } from "@nestjs/common";
import * as nodemailer from "nodemailer";

@Injectable()
export class SuggestionService {
  async sendSuggestionEmail(
    userEmail: string,
    suggestion: string
  ): Promise<void> {
    const transporter = nodemailer.createTransport({
      service: "gmail",
      auth: {
        user: "muyfadu@gmail.com",
        pass: "mmho lkyt hmyf owju",
      },
    });

    const mailOptions = {
      from: "muyfadu@gmail.com",
      to: "muyfadu@gmail.com",
      subject: "Nueva Sugerencia",
      html: `
        <html>
          <body>
            <p>Nueva sugerencia de ${userEmail}:</p>
            <p>${suggestion}</p>
          </body>
        </html>
      `,
    };

    try {
      await transporter.sendMail(mailOptions);
    } catch (error) {
      console.error("Error al enviar el correo electrónico:", error);
    }
  }
}
