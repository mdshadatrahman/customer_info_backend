import { IsNotEmpty } from "class-validator";

export class AddStoreDto {
	@IsNotEmpty()
	store_name: string;

	@IsNotEmpty()
	owner_name: string;

	@IsNotEmpty()
	phone: string;

	@IsNotEmpty()
	address: string;

	email?: string;
	website?: string;
	description?: string;
	image?: string;
	category?: string;
	country?: string;
	division?: string;
	city?: string;
	area?: string;
	about?: string;
}