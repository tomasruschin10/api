import { HttpStatus, Injectable } from "@nestjs/common";
import { SubjectParentRepository } from "src/modules/database/repositories/subjectParentRepository.service";
import { SubjectRepository } from "../../modules/database/repositories/subjectRepository.service";
@Injectable()
export class SubjectService {
  constructor(
    private readonly subjectRepository: SubjectRepository,
    private readonly subjectParentRepository: SubjectParentRepository
  ) { }

  async create(request: { data: any[] }): Promise<{ statusCode: number; message: any }> {
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

      for (const parent of dataItem?.subjectParent || []) {
        if (typeof parent.key !== 'undefined' || parent.id) {
          if (typeof parent.key !== 'undefined') {
            subjectParents.push(created[parent.key].id);
          }
          if (parent.id) {
            subjectParents.push(parent.id);
          }
        }
      }

      try {
        const subject = await this.subjectRepository.create(body);
        created.push(subject);

        for (const subjectParentId of subjectParents) {
          await this.subjectParentRepository.create({
            subject_id: subject.id,
            subject_parent_id: subjectParentId,
          });
        }
      } catch (error) {
        console.error('ERROR: ', error);
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
    const updatedSubjects: any[] = [];
    for (const requestData of request.data) {
      let subject;
  
      const subjectUpdateData = {
        name: requestData.name,
        subject_category_id: requestData.subject_category_id,
        info: requestData.info,
        url: requestData.url,
        selective: requestData.selective,
        selectiveSubjects: requestData.selectiveSubjects,
        chairs: requestData.chairs,
        prefix: requestData.prefix,
      };
  
      if (requestData.id) {
        await this.subjectRepository.update(requestData.id, subjectUpdateData);
        subject = subjectUpdateData;
      } else {
        subject = await this.subjectRepository.create(subjectUpdateData);
      }
  
      if (requestData.subjectParent) {
        await this.subjectParentRepository.delete({ subject_id: subject.id });
  
        for (const subjectParentData of requestData.subjectParent) {
          await this.subjectParentRepository.create({
            subject_id: subject.id,
            subject_parent_id: subjectParentData.id,
          });
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
