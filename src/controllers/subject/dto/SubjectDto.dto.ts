import { ApiProperty } from '@nestjs/swagger';
import { IsArray, IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class subjectCreateDto {
    @ApiProperty()
    @IsArray()
    @IsNotEmpty()
    data: Array<subjectBody>
} 

export class subjectUpdateDto {
    @ApiProperty()
    @IsArray()
    data: Array<subjectBody>

    @ApiProperty()
    @IsArray()
    deleteData: Array<number>
} 

export class subjectDto {
    @ApiProperty()
    id: number;

    @ApiProperty()
    name: string;

    @ApiProperty()
    subject_category_id: number;
  
    @ApiProperty()
    created_at: Date

    @ApiProperty()
    updated_at: Date
}

class subjectBody {
    @ApiProperty()
    name: string

    @ApiProperty()
    subject_category_id: number

    @ApiProperty()
    subjectParent?: subjectParent[]

    @ApiProperty()
    orSubjectParent?: orSubjectParentDto[];
}

class subjectParent {
    @ApiProperty()
    key: number

    @ApiProperty()
    id: number
    
}

class orSubjectParentDto {
    @ApiProperty()
    id: number;

    @ApiProperty()
    subject_id: number;

    @ApiProperty()
    subject_parent_id: number;

    @ApiProperty({ type: subjectDto })
    parent: subjectDto;
}