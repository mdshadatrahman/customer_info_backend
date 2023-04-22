import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateSubCategoryDto {
	@IsNotEmpty()
	category_id: number;

	@IsString()
	@IsNotEmpty()
	sub_category_name: string;
}
