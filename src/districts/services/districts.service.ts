import { District } from 'src/districts/entities/district.entity';
import { HttpStatus, Injectable } from '@nestjs/common';
import { CreateDistrictDto } from '../dto/create-district.dto';
import { UpdateDistrictDto } from '../dto/update-district.dto';
import { Division } from 'src/divisions/entities/division.entity';

@Injectable()
export class DistrictsService {
  async findAll() {
    const district = await District.find();
    return district;
  }

  async findOne(id: number) {
    const response = await District.findOne({ where: { id: id }, relations: ['division', 'upazila'] });
    return {
      statusCode: HttpStatus.OK,
      message: 'success',
      data: response
    }
  }

}
