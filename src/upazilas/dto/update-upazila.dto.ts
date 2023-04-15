import { PartialType } from '@nestjs/swagger';
import { CreateUpazilaDto } from './create-upazila.dto';

export class UpdateUpazilaDto extends PartialType(CreateUpazilaDto) {}
