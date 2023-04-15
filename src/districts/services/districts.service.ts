import { District } from 'src/districts/entities/district.entity';
import { HttpStatus, Injectable } from '@nestjs/common';
import { CreateDistrictDto } from '../dto/create-district.dto';
import { UpdateDistrictDto } from '../dto/update-district.dto';

@Injectable()
export class DistrictsService {
  create(createDistrictDto: CreateDistrictDto) {
    return 'This action adds a new district';
  }

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

  update(id: number, updateDistrictDto: UpdateDistrictDto) {
    return `This action updates a #${id} district`;
  }

  remove(id: number) {
    return `This action removes a #${id} district`;
  }
}
