import { IsNotEmpty } from "class-validator";

export class AddStore {
	@IsNotEmpty()
	name: string;

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
	area?: string;
}