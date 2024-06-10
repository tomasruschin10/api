import { HttpStatus, Injectable } from "@nestjs/common";
import { SubjectParentRepository } from "src/modules/database/repositories/subjectParentRepository.service";
import { SubjectRepository } from "../../modules/database/repositories/subjectRepository.service";
import { SubjectCategoryRepository } from "src/modules/database/repositories/subjectCategoryRepository.service";
import { SubjectParent } from "src/models/subjectParent.entity";

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
    const subjectParents: any[] = [];
  
    for (let i = 0; i < request.data.length; i++) {
      let subject;
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
  
      if (request.data[i].id) {
        await this.subjectRepository.update(request.data[i].id, body);
        subject = { id: request.data[i].id, ...body };
      } else {
        subject = await this.subjectRepository.create(body);
      }
      created.push(subject);
  
      if (request.data[i].subjectParent) {
        const updatedSubjectParents = await this.updateSubjectParents(subject.id, request.data[i].subjectParent);
        subjectParents.push(updatedSubjectParents);
      }
    }
    return { created, subjectParents };
  }
  
  private async updateSubjectParents(subjectId: number, subjectParent: any[]) {
    const existingSubjectParents = await this.subjectParentRepository.find({ where: { subject_id: subjectId } });

    const existingSubjectParentsMap = new Map(existingSubjectParents.map(sp => [sp.subject_parent_id, sp]));

    const newSubjectParentIds = new Set(subjectParent.map(sp => sp.subject_parent_id));

    for (const existingSubjectParent of existingSubjectParents) {
      if (!newSubjectParentIds.has(existingSubjectParent.subject_parent_id)) {
        await this.subjectParentRepository.remove(existingSubjectParent);
      }
    }

    for (const newSubjectParent of subjectParent) {
      if (existingSubjectParentsMap.has(newSubjectParent.subject_parent_id)) {
        const existingSubjectParent = existingSubjectParentsMap.get(newSubjectParent.subject_parent_id);
        existingSubjectParent.subject_parent_id = newSubjectParent.subject_parent_id;
        await this.subjectParentRepository.save(existingSubjectParent);
      } else {
        const subjectParent = new SubjectParent();
        subjectParent.subject_id = subjectId;
        subjectParent.subject_parent_id = newSubjectParent.subject_parent_id;
        await this.subjectParentRepository.save(subjectParent);
      }
    }
  }


  async delete(id: number) {
    const subject = await this.subjectRepository.delete(id);

    return { statusCode: 200, message: "removed" };
  }
}
