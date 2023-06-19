import { Injectable, Inject, HttpException, HttpStatus } from '@nestjs/common';
import { Repository } from "typeorm";
import { Offer } from '../../../models/offer.entity';
import { SharedService } from 'src/modules/shared/shared.service';
@Injectable()
export class OfferRepository {
    constructor(
        @Inject('OFFER_REPOSITORY')
        private offersRepository: Repository<Offer>,
        private sharedService: SharedService
    ) { }


    async create(request): Promise<any> {
        //save offer
        const offer = await this.offersRepository.create(request)
        await this.offersRepository.save(offer)

        //return
        return offer
    }
    async getAll(career: number, search: string): Promise<Offer[] | string> {
        const queryBuilder = this.offersRepository.createQueryBuilder('o')
          .innerJoinAndSelect('o.offerCategory', 'oo')
          .leftJoinAndSelect('o.image', 'oi')
          .leftJoinAndSelect('o.partner', 'op')
          .leftJoinAndSelect('o.career', 'os')
          .where('o.offer_category_id NOT IN (:...categories)', { categories: [1, 2] });
      
        if (career) {
          queryBuilder.andWhere('o.career_id = :career', { career });
        }
      
        if (search) {
          const searchQuery = search.trim();
          if (searchQuery.length > 0) {
            queryBuilder.andWhere('(o.description LIKE :search OR o.title LIKE :search)', { search: `%${searchQuery}%` });
          }
        }
      
        const offers = await queryBuilder
          .orderBy('o.id', 'DESC')
          .getMany();
      
        return offers;
      }
      
      


    async getById(id): Promise<Offer | string> {
        const offer = await this.offersRepository.createQueryBuilder('o')
            .innerJoinAndSelect('o.offerCategory', 'oo')
            .leftJoinAndSelect('o.image', 'oi')
            .leftJoinAndSelect('o.partner', 'op')
            .leftJoinAndSelect('o.career', 'oc')
            .where(`o.id = ${id}`)
            .getOne()
        if (!offer) {
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        }
        return offer;
    }


    async update(id: number, request): Promise<any> {
        let offer = await this.offersRepository.findOne(id);
        if (!offer)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);

        offer = await this.sharedService.updateObject(offer, request)
        console.log("updateObject ",request,offer)
        await this.offersRepository.save(offer);

        return offer;
    }

    async delete(id): Promise<any> {
        const offer = await this.offersRepository.findOne(id);
        if (!offer)
            throw new HttpException('error! record not found', HttpStatus.NOT_FOUND);
        await this.offersRepository.delete(offer.id);

        return offer;

    }

    async getWorkOffers(career: string, search: string): Promise<Offer[] | string> {
        const queryBuilder = this.offersRepository.createQueryBuilder('o')
          .innerJoinAndSelect('o.offerCategory', 'oo')
          .leftJoinAndSelect('o.image', 'oi')
          .leftJoinAndSelect('o.partner', 'op')
          .leftJoinAndSelect('o.career', 'oc')
          .where('o.offer_category_id = 1')
          .andWhere('o.approved = 1');
      
        if (career) {
          queryBuilder.andWhere('o.career_id = :career', { career });
        }
      
        if (search) {
          queryBuilder.andWhere('(o.description LIKE :search OR o.title LIKE :search)', { search: `%${search}%` });
        }
      
        const offers = await queryBuilder
          .orderBy('o.id', 'DESC')
          .getMany();
      
        return offers;
      }
      



    async getCourseOffers(career: string, search: string): Promise<Offer[] | string> {
        let query = this.offersRepository.createQueryBuilder('o')
          .innerJoinAndSelect('o.offerCategory', 'oo')
          .leftJoinAndSelect('o.image', 'oi')
          .leftJoinAndSelect('o.partner', 'op')
          .leftJoinAndSelect('o.career', 'oc')
          .where("o.offer_category_id = :categoryId AND o.approved = :approved", { categoryId: 2, approved: 1 });
      
        if (career) {
          query = query.andWhere("o.career_id = :careerId", { careerId: career });
        }
      
        if (search) {
          query = query.andWhere("(o.description LIKE :search OR o.title LIKE :search)", { search: `%${search}%` });
        }
      
        query = query.orderBy('o.id', 'DESC');
      
        try {
          const offers = await query.getMany();
          return offers;
        } catch (error) {
          return "Error retrieving course offers.";
        }
      }

      async getAdminAll(search: string): Promise<Offer[] | string> {
        const queryBuilder = this.offersRepository.createQueryBuilder('o')
          .innerJoinAndSelect('o.offerCategory', 'oo')
          .leftJoinAndSelect('o.image', 'oi')
          .leftJoinAndSelect('o.partner', 'op')
          .leftJoinAndSelect('o.career', 'os')
          .where('o.offer_category_id NOT IN (:...categories)', { categories: [1, 2] });
      
        if (search) {
          const searchQuery = search.trim();
          if (searchQuery.length > 0) {
            queryBuilder.andWhere('(o.description LIKE :search OR o.title LIKE :search)', { search: `%${searchQuery}%` });
          }
        }
      
        const offers = await queryBuilder
          .orderBy('o.id', 'DESC')
          .getMany();
      
        return offers;
      }

    async getAdminWorkOffers(search): Promise<Offer[] | string> {
        const queryBuilder = this.offersRepository.createQueryBuilder('o')
          .innerJoinAndSelect('o.offerCategory', 'oo')
          .leftJoinAndSelect('o.image', 'oi')
          .leftJoinAndSelect('o.partner', 'op')
          .leftJoinAndSelect('o.career', 'oc')
          .where('o.offer_category_id = 1');

        if (search) {
          queryBuilder.andWhere('(o.description LIKE :search OR o.title LIKE :search)', { search: `%${search}%` });
        }
      
        const offers = await queryBuilder
          .orderBy('o.id', 'DESC')
          .getMany();
      
        return offers;
    }
      async getAllCourseOffers(search: string): Promise<Offer[] | string> {
        let query = this.offersRepository.createQueryBuilder('o')
          .innerJoinAndSelect('o.offerCategory', 'oo')
          .leftJoinAndSelect('o.image', 'oi')
          .leftJoinAndSelect('o.partner', 'op')
          .leftJoinAndSelect('o.career', 'oc')
          .where("o.offer_category_id = :categoryId", { categoryId: 2});
      
        if (search) {
          query = query.andWhere("(o.description LIKE :search OR o.title LIKE :search)", { search: `%${search}%` });
        }
      
        query = query.orderBy('o.id', 'DESC');
      
        try {
          const offers = await query.getMany();
          return offers;
        } catch (error) {
            console.error(error)
          return "Error retrieving course offers.";
        }
      }
}
 