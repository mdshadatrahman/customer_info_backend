import { Category } from './../../category/category.entity';
import { IsNotEmpty } from "class-validator";
import { FormalAddress } from "src/store/formal-address.entity";
import { SubCategory } from 'src/sub-category/entities/sub-category.entity';

export class AddStoreDto {
	@IsNotEmpty()
	category: Category;

	// @IsNotEmpty()
	formal_address: FormalAddress;

	@IsNotEmpty()
	store_name: string;

	@IsNotEmpty()
	owner_name: string;

	@IsNotEmpty()
	phone: string;

	subCategory_id: number;
	informal_address?: string;
	email?: string;
	website?: string;
	description?: string;
	image?: string;
	about?: string;
}