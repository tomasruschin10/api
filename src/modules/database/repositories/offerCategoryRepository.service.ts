import { Injectable, Inject, HttpException, HttpStatus } from '@nestjs/common';
import { Repository } from "typeorm";
import { OfferCategory } from '../../../models/offerCategory.entity';
import { SharedService } from 'src/modules/shared/shared.service';
@Injectable()
export class OfferCategoryRepository {
    constructor(
        @Inject('OFFER_CATEGORY_REPOSITORY')
        private offerCategorysRepository: Repository<OfferCategory>,
        private sharedService: SharedService
    ) { }


    async create(request): Promise<any> {
        //save offerCategory
        const offerCategory = await this.offerCategorysRepository.create(request)
        await this.offerCategorysRepository.save(offerCategory)

        //return
        //Hacer una id en el getAll del repositorio de OfferCategories
        return offerCategory
    }

    async getAll(
        career_id: number,
        search: string
      ): Promise<OfferCategory[] | string> {
        // Inicializar el constructor de consultas
        const queryBuilder = this.offerCategorysRepository
          .createQueryBuilder("o")
          .leftJoinAndSelect("o.offers", "oo")
          .leftJoinAndSelect("oo.image", "ooi")
          .leftJoinAndSelect("oo.partner", "oop");
    
        // Excluir categorías específicas
        queryBuilder.where("o.id NOT IN (:...excludedIds)", {
          excludedIds: [1, 2],
        });
    
        // Filtrar por career_id si se proporciona
        if (career_id) {
          queryBuilder.andWhere("oo.career_id = :career_id", { career_id });
        }
    
        // Filtrar por término de búsqueda si se proporciona
        if (search) {
          const searchQuery = search.trim();
          if (searchQuery.length > 0) {
            queryBuilder.andWhere(
              "(oo.title LIKE :search OR oo.description LIKE :search)",
              { search: `%${searchQuery}%` }
            );
          }
        }
    
        const queryResult = await queryBuilder.orderBy("o.id", "DESC").getMany();
    
        const categoriesWithApprovedOffers = queryResult.filter((category) =>
          category.offers.some((offer) => offer.approved)
        );
    
        return categoriesWithApprovedOffers;
      }
      

/*     async getAll(role_id, career_id, search): Promise<OfferCategory[] | string> {
        let where ='o.id != 1 AND o.id != 2'
        let query

        if(career_id) where+=` AND oo.career_id = ${career_id}`
        if(search) where+=` AND (oo.title LIKE '%${search}%' OR oo.description LIKE '%${search}%')`

        if (role_id == 1) {
            query = await this.offerCategorysRepository.createQueryBuilder('o')
                .getMany()
        } else {
            query = await this.offerCategorysRepository.createQueryBuilder('o')
                .leftJoinAndSelect('o.offers', 'oo')
                .leftJoinAndSelect('oo.image', 'ooi')
                .leftJoinAndSelect('oo.partner', 'oop')
                .where(where)
                .orderBy('o.id', 'DESC')
                .getMany()
        }

        return query;
    } */


    async getById(id): Promise<OfferCategory | string> {
        const offerCategory = await this.offerCategorysRepository.createQueryBuilder('o')
            .leftJoinAndSelect('o.offers', 'oo')
            .where(`o.id = ${id}`)
            .getOne()
        if (!offerCategory) {
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        }
        return offerCategory;
    }


    async update(id: number, request): Promise<any> {
        let offerCategory = await this.offerCategorysRepository.findOne(id);
        if (!offerCategory)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);

        offerCategory = await this.sharedService.updateObject(offerCategory, request)

        await this.offerCategorysRepository.save(offerCategory);

        return offerCategory;
    }

    async delete(id): Promise<any> {
        const offerCategory = await this.offerCategorysRepository.findOne(id);
        if (!offerCategory)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        await this.offerCategorysRepository.delete(offerCategory.id);

        return offerCategory;

    }

}