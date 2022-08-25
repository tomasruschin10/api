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
        let query = `ot.tag_id = ${data.tag_id} && o.student_id = ${data.student_id}`

        if (!data.student_id || !data.tag_id) {
            if (!data.tag_id) query = query.replace(`ot.tag_id = ${data.tag_id}`, "")
            if (!data.student_id) query = query.replace(`o.student_id = ${data.student_id}`, "")
            query = query.replace('&&', "")
        }
        return await this.opinionRepository.createQueryBuilder('o')
            .leftJoinAndSelect('o.opinionTags', 'ot')
            .leftJoinAndSelect('ot.tag', 't')
            .innerJoinAndSelect('o.subject','os')
            .where(query)
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