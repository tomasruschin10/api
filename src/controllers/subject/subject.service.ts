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

  async update(request: any) {
    const created: any[] = [];

    for (let i = 0; i < request.data.length; i++) {
      const subjectData = request.data[i];
      let subject;
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

      if (subjectData.id) {
        subject = await this.subjectRepository.update(subjectData.id, body);
      } else {
        subject = await this.subjectRepository.create(body);
      }

      // Actualizar subjectParent
      if (subjectData.subjectParent) {
        await this.updateSubjectParents(subject.id, subjectData.subjectParent);
      }

      created.push(subject);
    }

    if (request.deleteData && request.deleteData.length > 0) {
      await this.deleteSubjects(request.deleteData);
    }

    return created;
  }

 private async updateSubjectParents(subjectId: number, parents: any[]) {
    // Eliminar las correlativas existentes
    const parentIds = parents.map(parent => parent.id);
    await this.subjectParentRepository.deleteMany(parentIds, subjectId);

    // Crear nuevas correlativas
    for (const parent of parents) {
      const newSubjectParent = {
        subject_id: subjectId,
        subject_parent_id: parent.id,
      };
      await this.subjectParentRepository.create(newSubjectParent);
    }
  }

  private async deleteSubjects(ids: number[]) {
    await this.subjectRepository.deleteMany(ids);
  }

  async delete(id: number) {
    const subject = await this.subjectRepository.delete(id);

    return { statusCode: 200, message: "removed" };
  }
}
