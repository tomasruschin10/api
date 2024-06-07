import { HttpStatus, Injectable, HttpException} from "@nestjs/common";
import { SubjectParentRepository } from "src/modules/database/repositories/subjectParentRepository.service";
import { SubjectRepository } from "../../modules/database/repositories/subjectRepository.service";
import { Repository } from "typeorm";
import { SubjectCategory } from "src/models/subjectCategory.entity";

@Injectable()
export class SubjectService {
  constructor(
    private subjectCategorysRepository: Repository<SubjectCategory>,
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
    const createdSubjects: any[] = [];
    const createdSubjectParents: any[] = [];
    
    for (let i = 0; i < request.data.length; i++) {
        let subject;
        let subjectParents = [];
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

        console.log('Processing subject:', body);
        console.log('Subject parents before processing:', request.data[i].subjectParent);

        // Procesar subjectParent
        for (let parent of request.data[i].subjectParent) {
            if (parent.key !== undefined || parent.id) {
                if (parent.key !== undefined) {
                    subjectParents.push(createdSubjects[parent.key].id);
                }
                if (parent.id) {
                    subjectParents.push(parent.id);
                }
            }
        }

        console.log('Subject parents after processing:', subjectParents);

        // Crear o actualizar subject
        if (request.data[i].id) {
            subject = await this.subjectRepository.update(request.data[i].id, body);
        } else {
            subject = await this.subjectRepository.create(body);
        }
        
        createdSubjects.push(subject);

        // Eliminar subjectParents existentes
        await this.subjectParentRepository.deleteMany(request.data[i].deleteParent, subject.id);
        
        // Crear nuevos subjectParents
        for (let subjectParent of subjectParents) {
            const newSubjectParent = await this.subjectParentRepository.create({
                subject_id: subject.id,
                subject_parent_id: subjectParent
            });
            createdSubjectParents.push(newSubjectParent);
        }

        console.log('Created subject parents:', createdSubjectParents);

        // Actualizar subjectCategory con subjectParent
        let subjectCategory = await this.subjectCategorysRepository.findOne(request.data[i].subject_category_id);
        if (!subjectCategory)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);

        subjectCategory.subjectParent = createdSubjectParents;
        await this.subjectCategorysRepository.save(subjectCategory);
    }
    
    return {
        createdSubjects,
        createdSubjectParents
    };
}


  async delete(id: number) {
    const subject = await this.subjectRepository.delete(id);

    return { statusCode: 200, message: "removed" };
  }
}
