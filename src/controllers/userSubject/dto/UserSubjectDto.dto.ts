import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class userSubjectCreateDto {
    @ApiProperty()
    @IsNotEmpty()
    @IsNumber()
    user_id: number;

    @ApiProperty()
    @IsNotEmpty()
    @IsNumber()
    subject_id: number;

    @ApiProperty()
    score: number;

    @ApiProperty()
    @IsString()
    chair: string;

    @ApiProperty()
    @IsNumber()
    requirement: number;

    @ApiProperty()
    @IsNumber()
    qualityOfTeachers: number;

    @ApiProperty()
    @IsNumber()
    practicalJobs: number;

    @ApiProperty()
    @IsNumber()
    cost: number;

    @ApiProperty()
    finish: number;
}

export class userSubjectUpdateDto {
    @ApiProperty()
    user_id: number;

    @ApiProperty()
    subject_id: number;

    @ApiProperty()
    score: number;

    @ApiProperty()
    @IsString()
    chair: string;

    @ApiProperty()
    @IsNumber()
    requirement: number;

    @ApiProperty()
    @IsNumber()
    qualityOfTeachers: number;

    @ApiProperty()
    @IsNumber()
    practicalJobs: number;

    @ApiProperty()
    @IsNumber()
    cost: number;

    @ApiProperty()
    finish: number;
}

export class userSubjectDto {
    @ApiProperty()
    id: number;

    @ApiProperty()
    user_id: number;

    @ApiProperty()
    subject_id: number;

    @ApiProperty()
    score: number;

    @ApiProperty()
    @IsString()
    chair: string;

    @ApiProperty()
    @IsNumber()
    requirement: number;

    @ApiProperty()
    @IsNumber()
    qualityOfTeachers: number;

    @ApiProperty()
    @IsNumber()
    practicalJobs: number;

    @ApiProperty()
    @IsNumber()
    cost: number;

    @ApiProperty()
    finish: number;

    @ApiProperty()
    created_at: Date

    @ApiProperty()
    updated_at: Date
}