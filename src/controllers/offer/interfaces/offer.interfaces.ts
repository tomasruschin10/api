export interface offerBody {
    image_id: any;
    title: string;
    point: number;
    offer_category_id: number;
    partner_id: number;
    career_id: number;
    description: string;
    name?:string;
    company?: string;
    phone?: string;
    url?: string;
    image: Express.Multer.File
} 