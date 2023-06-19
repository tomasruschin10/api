import { HttpStatus, Injectable, HttpException, BadRequestException } from '@nestjs/common';
import { ImageRepository } from 'src/modules/database/repositories/imageRepository.service';
import { OfferRepository } from '../../modules/database/repositories/offerRepository.service';
import { FirestorageService } from '../firestorage/firestorage.service';
import { Offer } from 'src/models/offer.entity';

@Injectable()
export class OfferService {

    constructor(
        private readonly offerRepository: OfferRepository,
        private readonly imageRepository: ImageRepository,
        private firestorageService: FirestorageService
    ) {}

    async create(request: any, file){
      request.image_id = (await this.imageRepository.create(file)).id

      const data: any = {
         title: request.title,
         offer_category_id: request.offer_category_id,
         description: request.description,
         image_id: request.image_id,
         career_id: parseInt(request.career_id)
     };

     if(request?.partner_id) {
      data.partner_id = request.partner_id;
     }

      const offer = await this.offerRepository.create(data)
      if (!offer) throw new BadRequestException(['incorrect data'])     

      return await this.getById(offer.id);
   }

   async getAll(career, search){
      const offers = await this.offerRepository.getAll(career, search)
      return offers;
   }

   async getById(id:number){
      const offer = await this.offerRepository.getById(id)
      return offer;
   }

   async updateOfferApprovedStatus(id: number) {
      const offer = await this.offerRepository.getById(id) as Offer;

      this.offerRepository.update(id, { approved: !offer.approved })
   }

   async update(id:number, request: any, file){

      const offer = await this.offerRepository.update(id, request)

      if (file) {
         await this.deleteFirebase(offer.image_id)
         await this.imageRepository.update(offer.image_id, file)
      }

      return await this.getById(offer.id);
   }

   async delete(id: number){
      const offer = await this.offerRepository.delete(id)
      await this.deleteFirebase(offer.image_id)
      await this.imageRepository.delete(offer.image_id)

      return {statusCode: 200, message: 'removed'}
   }

   async getWorkOffers(career, search){
      const offers = await this.offerRepository.getWorkOffers(career, search)
      return offers;
   }

   async getCourseOffers(career, search){
      const offers = await this.offerRepository.getCourseOffers(career, search)
      return offers;
   }

   async deleteFirebase(image_id) {
      let image = await this.imageRepository.getById(image_id)

      image? await this.firestorageService.remove(image.name): null
      return true
   }     

}