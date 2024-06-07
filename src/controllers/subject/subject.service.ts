import { HttpStatus, Injectable } from "@nestjs/common";
import { SubjectParentRepository } from "src/modules/database/repositories/subjectParentRepository.service";
import { SubjectRepository } from "../../modules/database/repositories/subjectRepository.service";
@Injectable()
export class SubjectService {
  constructor(
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

  async update(request: any): Promise<any[]> {
    const updatedSubjects: any[] = [];
    for (let i = 0; i < request.data.length; i++) {
      const subjectData = request.data[i];
      const body = {
        name: subjectData.name,
        subject_category_id: subjectData.subject_category_id,
        info: subjectData.info,
        url: subjectData.url,
        selective: subjectData.selective,
        selectiveSubjects: subjectData.selectiveSubjects,
        chairs: subjectData.chairs,
        prefix: subjectData.prefix,
      };

      let subject;
      if (subjectData.id) {
        subject = await this.subjectRepository.update(subjectData.id, body);
      } else {
        subject = await this.subjectRepository.create(body);
      }

      if (subjectData.subjectParent) {
        const parentData = {
          ...subjectData.subjectParent,
          subject_id: subject.id, 
        };
        
        if (subjectData.subjectParent.id) {
          await this.subjectParentRepository.update(subjectData.subjectParent.id, parentData);
        } else {
          await this.subjectParentRepository.create(parentData);
        }
      }

      updatedSubjects.push(subject);
    }
    return updatedSubjects;
  }

  async delete(id: number) {
    const subject = await this.subjectRepository.delete(id);

    return { statusCode: 200, message: "removed" };
  }
}
