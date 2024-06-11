import { HttpStatus, Injectable } from "@nestjs/common";
import { SubjectParentRepository } from "src/modules/database/repositories/subjectParentRepository.service";
import { SubjectRepository } from "../../modules/database/repositories/subjectRepository.service";
import { SubjectCategoryRepository } from "src/modules/database/repositories/subjectCategoryRepository.service";

@Injectable()
export class SubjectService {
  constructor(
    private readonly subjectCategoryRepository: SubjectCategoryRepository,
    private readonly subjectRepository: SubjectRepository,
    private readonly subjectParentRepository: SubjectParentRepository
  ) { }

  async create(request: {
    data: any[];
  }): Promise<{ statusCode: number; message: any }> {
    const created: any[] = [];

    if (!Array.isArray(request.data)) {
      throw new Error('Invalid data format. "data" should be an array.');
    }

    for (const dataItem of request.data) {
      const subjectParents: number[] = [];
      const body = {
        name: dataItem.name,
        subject_category_id: dataItem.subject_category_id,
        info: dataItem.info,
        url: dataItem.url,
        selective: dataItem.selective,
        selectiveSubjects: dataItem.selectiveSubjects,
        chairs: dataItem.chairs,
        prefix: dataItem.prefix,
      };

      /*         for (const parent of dataItem?.subjectParent) {
          if (typeof parent.key !== 'undefined' || parent.id) {
            if (typeof parent.key !== 'undefined') {
              subjectParents.push(created[parent.key].id);
            }
            if (parent.id) {
              subjectParents.push(parent.id);
            }
          }
        } */

      try {
        const subject = await this.subjectRepository.create(body);
        created.push(subject);

        // Guardar los padres
        /*           for (const subjectParent of subjectParents) {
            await this.subjectParentRepository.create({
              subject_id: subject.id,
              subject_parent_id: subjectParent
            });
          } */
      } catch (error) {
        console.error("ERROR: ", error);
      }
    }

    return { statusCode: HttpStatus.OK, message: created };
  }

  async getAll(career) {
    const subjects = await this.subjectRepository.getAll(career);
    return subjects;
  }

  async getById(id: number) {
    const subject = await this.subjectRepository.getById(id);
    return subject;
  }

  async update(request: any) {
    const created: any[] = [];
    const prueba: any[] = [];


    for (let i = 0; i < request.data.length; i++) {
      let subject;
      let subjectParents = []
      let prueba1 = []
      let body = {
        name: request.data[i].name,
        subject_category_id: request.data[i].subject_category_id,
        info: request.data[i].info,
        url: request.data[i].url,
        selective: request.data[i].selective,
        selectiveSubjects: request.data[i].selectiveSubjects,
        chairs: request.data[i].chairs,
        prefix: request.data[i].prefix,
      };

      if (request.data[i].subjectParent && request.data[i].subjectParent.length > 0) {
        for (let parent of request.data[i].subjectParent) {
          const parentId = parent.id || (parent.key === 0 ? 0 : created[parent.key].id);
          if (!subjectParents.includes(parentId)) {
            prueba1.push(parentId)
            subjectParents.push(parentId);
          }
        }
      }

      if (request.data[i].id) {
        subject = await this.subjectRepository.update(request.data[i].id, body);
      } else {
        subject = await this.subjectRepository.create(body);
      }

      if (request.data[i].deleteParent && request.data[i].deleteParent.length > 0) {
        const deleteParentIds = request.data[i].deleteParent.map(parent => parent.id);
        await this.subjectParentRepository.deleteMany(deleteParentIds, subject.id);
      }

      for (let subjectParent of subjectParents) {
        await this.subjectParentRepository.create({
          subject_id: subject.id,
          subject_parent_id: subjectParent
        });
      }

      created.push(subject);
      prueba.push(prueba1)
    }
    return { created, prueba };
  }

  async delete(id: number) {
    const subject = await this.subjectRepository.delete(id);

    return { statusCode: 200, message: "removed" };
  }
}
