import { HttpStatus, Injectable, HttpException } from "@nestjs/common";
import { ActivityRepository } from "src/modules/database/repositories/activityRepository.service";
import { OpinionRepository } from "src/modules/database/repositories/opinionRepository.service";
import { UserRepository } from "src/modules/database/repositories/userRepository.service";
import { SharedService } from "src/modules/shared/shared.service";
import { OpinionAnswerRepository } from "../../modules/database/repositories/opinionAnswerRepository.service";
import * as nodemailer from "nodemailer";

@Injectable()
export class OpinionAnswerService {
  constructor(
    private readonly opinionAnswerRepository: OpinionAnswerRepository,
    private readonly activityRepository: ActivityRepository,
    private readonly userRepository: UserRepository,
    private readonly opinionRepository: OpinionRepository,
    private readonly sharedService: SharedService
  ) {}

  async create(request: any, user_id: any, header) {
    request.student_id = user_id;
    const opinionAnswer = await this.opinionAnswerRepository.create(request);
    if (!opinionAnswer)
      throw new HttpException("incorrect data", HttpStatus.BAD_REQUEST);

    await this.createActivity(opinionAnswer.id, header);

    const data = await this.getById(opinionAnswer.id);

    await this.sendOpinionEmail(
      data.opinion.student.email,
      data.student.username
    );

    return data;
  }

  async createActivity(answer_opinion_id: any, header: any) {
    let data = await this.opinionAnswerRepository.getById(answer_opinion_id);
    let recipient_id = data.opinion.student_id;
    let recipient_username = data.opinion.student.username;
    let sender_id = data.student_id;
    let sender_username = data.student.username;

    let activity = {
      user_id: sender_id,
      action: "Comentaste",
      description: `el hilo de @${recipient_username}`,
      type: "Comentario",
    };
    await this.activityRepository.create(activity);

    let notification = {
      title: "Te han respondido",
      user_to: recipient_id,
      message: `¡Hey, @${sender_username} comentó en tu hilo!`,
    };
    await this.sharedService.sendNotification(notification, header);
  }

  async getAll(data) {
    const opinionAnswers = await this.opinionAnswerRepository.getAll(data);
    return opinionAnswers;
  }

  async getById(id: number) {
    const opinionAnswer = await this.opinionAnswerRepository.getById(id);
    return opinionAnswer;
  }

  async update(id: number, request: any) {
    const opinionAnswer = await this.opinionAnswerRepository.update(
      id,
      request
    );

    return await this.getById(opinionAnswer.id);
  }

  async delete(id: number) {
    const opinionAnswer = await this.opinionAnswerRepository.delete(id);

    return { statusCode: 200, message: "removed" };
  }

  async sendOpinionEmail(email: string, student: string): Promise<void> {
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
      subject: "Alguien comentó tu hilo",
      html: `
     <html>
     <body>
       <h1>Te han respondido</h1>
       <p>¡Hey, el alumno @${student} comentó en tu hilo!</p>
       <p>Entra al app a ver lo que te han respondido</p>
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
  }
}
