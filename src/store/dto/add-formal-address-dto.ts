import { IsNotEmpty } from 'class-validator';
export class AddFormalAddressDto {
	@IsNotEmpty()
	country: string;

	@IsNotEmpty()
	division: string;

	@IsNotEmpty()
	district: string;

	@IsNotEmpty()
	thana: string;
}