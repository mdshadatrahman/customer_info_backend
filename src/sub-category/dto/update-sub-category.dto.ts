import { PartialType } from '@nestjs/swagger';
import { CreateSubCategoryDto } from './create-sub-category.dto';
import { IsNotEmpty } from 'class-validator';

export class UpdateSubCategoryDto {
	@IsNotEmpty()
	sub_category_name: string;
}
