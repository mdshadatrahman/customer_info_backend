import { IsNotEmpty } from "class-validator";

export class AddStore {
	@IsNotEmpty()
	store_name: string;

	@IsNotEmpty()
	owner_name: string;

	@IsNotEmpty()
	phone: string;

	address?: string;
	email?: string;
	website?: string;
	description?: string;
	image?: string;
	category?: string;
	country?: string;
	state?: string;
	city?: string;
	about?: string;
	area?: string;
}