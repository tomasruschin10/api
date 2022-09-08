import { Injectable, Inject, HttpException, HttpStatus } from '@nestjs/common';
import { Repository } from "typeorm";
import { Opinion } from '../../../models/opinion.entity';
import { SharedService } from 'src/modules/shared/shared.service';
@Injectable()
export class OpinionRepository {
    constructor(
        @Inject('OPINION_REPOSITORY')
        private opinionRepository: Repository<Opinion>,
        private sharedService: SharedService
    ) { }


    async create(request): Promise<any> {
        //save opinion
        const opinion = await this.opinionRepository.create(request)
        await this.opinionRepository.save(opinion)

        //return
        return opinion
    }

    // proximamente mas de un tag
    //
    async getAll(data): Promise<Opinion[] | any> {
        let query = ""
        //me trae los array como string ¿?
        if (data.tags) {
            query = "("
            for (let tag of data.tags) {
                if (query != "(") query += ' OR '
                query += `ot.tag_id = ${tag}`
            }
            query += ")"
        }

        if (data.student_id) {
            if (query != "") query += ' AND '
            query += `o.student_id = ${data.student_id}`
        }
        if (data.subject_id) {
            if (query != "") query += ' AND '
            query += `o.subject_id = ${data.subject_id}`
        }


        let sql = await this.opinionRepository.createQueryBuilder('o')
            .leftJoinAndSelect('o.opinionTags', 'ot')
            .select(['o.id'])
            .where(query)
            .distinct(true)
            .orderBy('o.id', 'DESC')
            .limit(data.limit)
            .offset(data.offset)
            .getMany()

        if (query != "") query += ' AND '
        query += `o.id between ${sql[sql.length - 1].id} AND ${sql[0].id}`

        return await this.opinionRepository.createQueryBuilder('o')
            .leftJoinAndSelect('o.opinionTags', 'ot')
            .leftJoinAndSelect('ot.tag', 't')
            .innerJoinAndSelect('o.subject', 'os')
            .innerJoinAndSelect('o.student', 's')
            .innerJoinAndSelect('s.image', 'si')
            .where(query)
            .orderBy('o.id', 'DESC')
            .getMany()
    }


    async getById(id): Promise<Opinion | any> {
        const opinion = await this.opinionRepository.createQueryBuilder('o')
            .leftJoinAndSelect('o.opinionTags', 'ot')
            .leftJoinAndSelect('ot.tag', 't')
            .where(`o.id = ${id}`)
            .getOne()
        if (!opinion) {
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        }
        return opinion;
    }

    async findOpinion(id): Promise<Opinion | string> {
        return await this.opinionRepository.findOne(id)
    }


    async update(id: number, request): Promise<any> {
        let opinion = await this.opinionRepository.createQueryBuilder('o')
            .leftJoinAndSelect('o.opinionTags', 'ot')
            .leftJoinAndSelect('ot.tag', 't')
            .where(`o.id = ${id}`)
            .getOne()

        if (!opinion)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);

        opinion = await this.sharedService.updateObject(opinion, request)

        await this.opinionRepository.save(opinion);

        return opinion;
    }

    async delete(id): Promise<any> {
        const opinion = await this.opinionRepository.findOne(id);
        if (!opinion)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        await this.opinionRepository.delete(opinion.id);

        return opinion;

    }

}