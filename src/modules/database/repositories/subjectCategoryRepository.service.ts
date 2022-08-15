import { Injectable, Inject, HttpException, HttpStatus } from '@nestjs/common';
import { Repository } from "typeorm";
import { SubjectCategory } from '../../../models/subjectCategory.entity';
import { SharedService } from 'src/modules/shared/shared.service';
@Injectable()
export class SubjectCategoryRepository {
    constructor(
        @Inject('SUBJECT_CATEGORY_REPOSITORY')
        private subjectCategorysRepository: Repository<SubjectCategory>,
        private sharedService: SharedService
    ) {}


    async create(request): Promise<any>{
        //save subjectCategory
        const subjectCategory = await this.subjectCategorysRepository.create(request)
        await this.subjectCategorysRepository.save(subjectCategory)
        
        //return
        return subjectCategory
    }

    async getAll(): Promise<SubjectCategory[] | string> {
        return await this.subjectCategorysRepository.find();
    }


    async getById(id): Promise<SubjectCategory | string> {
        const subjectCategory = await this.subjectCategorysRepository.findOne(id)
        if (!subjectCategory) {
            throw new HttpException('error! record not found',HttpStatus.NOT_FOUND); 
        }
        return subjectCategory;
    }


    async update(id: number, request): Promise<any> {
        let subjectCategory = await this.subjectCategorysRepository.findOne(id);
        if (!subjectCategory)
            throw new HttpException('error! record not found',HttpStatus.NOT_FOUND); 
        
        subjectCategory = await this.sharedService.updateObject(subjectCategory, request)

        await this.subjectCategorysRepository.save(subjectCategory);

        return subjectCategory;
    }

    async delete(id): Promise<any> {
        const subjectCategory = await this.subjectCategorysRepository.findOne(id);
        if (!subjectCategory)
            throw new HttpException('error! record not found',HttpStatus.NOT_FOUND); 
        await this.subjectCategorysRepository.delete(subjectCategory.id);

        return subjectCategory;

    }

}