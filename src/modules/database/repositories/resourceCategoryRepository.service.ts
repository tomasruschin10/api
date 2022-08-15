import { Injectable, Inject, HttpException, HttpStatus } from '@nestjs/common';
import { Repository } from "typeorm";
import { ResourceCategory } from '../../../models/resourceCategory.entity';
import { SharedService } from 'src/modules/shared/shared.service';
@Injectable()
export class ResourceCategoryRepository {
    constructor(
        @Inject('RESOURCE_CATEGORY_REPOSITORY')
        private resourceCategorysRepository: Repository<ResourceCategory>,
        private sharedService: SharedService
    ) {}


    async create(request): Promise<any>{
        //save resourceCategory
        const resourceCategory = await this.resourceCategorysRepository.create(request)
        await this.resourceCategorysRepository.save(resourceCategory)
        
        //return
        return resourceCategory
    }

    async getAll(subject): Promise<ResourceCategory[] | string> {
        return await this.resourceCategorysRepository.createQueryBuilder('r')
            .leftJoinAndSelect('r.resources', 'rr')
            .leftJoinAndSelect('rr.user', 'rru')
            .leftJoinAndSelect('rr.image', 'rri')
            .where(subject ? `rr.subject_id = ${subject}`:'')
            .getMany()
    }


    async getById(id): Promise<ResourceCategory | string> {
        const resourceCategory = await this.resourceCategorysRepository.findOne(id)
        if (!resourceCategory) {
            throw new HttpException('error! record not found',HttpStatus.NOT_FOUND); 
        }
        return resourceCategory;
    }


    async update(id: number, request): Promise<any> {
        let resourceCategory = await this.resourceCategorysRepository.findOne(id);
        if (!resourceCategory)
            throw new HttpException('error! record not found',HttpStatus.NOT_FOUND); 
        
        resourceCategory = await this.sharedService.updateObject(resourceCategory, request)

        await this.resourceCategorysRepository.save(resourceCategory);

        return resourceCategory;
    }

    async delete(id): Promise<any> {
        const resourceCategory = await this.resourceCategorysRepository.findOne(id);
        if (!resourceCategory)
            throw new HttpException('error! record not found',HttpStatus.NOT_FOUND); 
        await this.resourceCategorysRepository.delete(resourceCategory.id);

        return resourceCategory;

    }

}