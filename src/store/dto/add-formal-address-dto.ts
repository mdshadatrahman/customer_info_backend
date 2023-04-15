import { IsNotEmpty } from 'class-validator';
import { District } from 'src/districts/entities/district.entity';
import { Division } from 'src/divisions/entities/division.entity';
import { Upazila } from 'src/upazilas/entities/upazila.entity';
export class AddFormalAddressDto {
	@IsNotEmpty()
	country: string;

	@IsNotEmpty()
	divisionId: number;

	@IsNotEmpty()
	districtId: number;

	@IsNotEmpty()
	upazilaId: number;
}