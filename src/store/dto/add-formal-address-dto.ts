import { IsNotEmpty } from 'class-validator';
import { District } from 'src/districts/entities/district.entity';
import { Division } from 'src/divisions/entities/division.entity';
import { Upazila } from 'src/upazilas/entities/upazila.entity';
export class AddFormalAddressDto {
	@IsNotEmpty()
	country: string;

	@IsNotEmpty()
	division: Division;

	@IsNotEmpty()
	district: District;

	@IsNotEmpty()
	upazila: Upazila;
}