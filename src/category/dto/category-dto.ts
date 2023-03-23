import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class Category {
	@IsNumber()
	@IsNotEmpty()
	id: number;

	@IsString()
	@IsNotEmpty()
	categoryName: string;
}