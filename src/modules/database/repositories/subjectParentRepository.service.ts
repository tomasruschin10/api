import { Injectable, Inject, HttpException, HttpStatus } from '@nestjs/common';
import { Repository, FindManyOptions } from "typeorm";
import { SubjectParent } from '../../../models/subjectParent.entity';
import { SubjectParentOr } from 'src/models/subjectParentOr.entity';
import { SharedService } from 'src/modules/shared/shared.service';
@Injectable()
export class SubjectParentRepository {
    constructor(
        @Inject('SUBJECT_PARENT_REPOSITORY')
        private subjectParentsRepository: Repository<SubjectParent>,
        @Inject('SUBJECT_PARENT_OR_REPOSITORY')
        private subjectParentOrRepository: Repository<SubjectParentOr>,
        private sharedService: SharedService
    ) { }


    async create(request): Promise<any> {
        const { orSubjectParents, ...subjectParentData } = request;

        // Crear el objeto SubjectParent
        const subjectParent = this.subjectParentsRepository.create(subjectParentData);
        await this.subjectParentsRepository.save(subjectParent);

        if (orSubjectParents && orSubjectParents.length > 0) {
            const subjectParentOrs = orSubjectParents.map(orParent =>
                this.subjectParentOrRepository.create({
                    subject_parent_id: subjectParent.id,
                    subject_id: orParent.subject_id
                })
            );
            await this.subjectParentOrRepository.save(subjectParentOrs);
        }

        return subjectParent;
    }

    async getAll(): Promise<SubjectParent[] | string> {
        return await this.subjectParentsRepository.createQueryBuilder('s')
            .getMany()
    }


    async getById(id): Promise<SubjectParent | any> {
        const subjectParent = await this.subjectParentsRepository.createQueryBuilder('s')
            .where(`s.id = ${id}`)
            .getOne()
        if (!subjectParent) {
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        }
        return subjectParent;
    }


    async update(id: number, request): Promise<any> {
        let subjectParent = await this.subjectParentsRepository.findOne(id);
        if (!subjectParent)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);

        subjectParent = await this.sharedService.updateObject(subjectParent, request)

        await this.subjectParentsRepository.save(subjectParent);

        return subjectParent;
    }

    async delete(id): Promise<any> {
        const subjectParent = await this.subjectParentsRepository.findOne(id);
        if (!subjectParent)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        await this.subjectParentsRepository.delete(subjectParent.id);

        return subjectParent;

    }

    async deleteMany(data, id): Promise<any> {
        try {
            await this.subjectParentsRepository.createQueryBuilder()
                .delete()
                .where(`subject_id = ${id} AND subject_parent_id IN(${data})`)
                .execute()
        } catch (error) {

        }

        return 'success';

    }

    async deleteAllBySubjectId(subjectId: number): Promise<void> {
        try {
            await this.subjectParentsRepository.createQueryBuilder()
                .delete()
                .where("subject_id = :subjectId", { subjectId })
                .execute();
        } catch (error) {
            // Manejo de errores si es necesario
            console.error("Error deleting subjectParents by subjectId:", error);
            throw new HttpException("Failed to delete subjectParents by subjectId", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}