import { HttpStatus, Injectable } from '@nestjs/common';
import { CreateDivisionDto } from '../dto/create-division.dto';
import { UpdateDivisionDto } from '../dto/update-division.dto';
import { Division } from '../entities/division.entity';

@Injectable()
export class DivisionsService {
  create(createDivisionDto: CreateDivisionDto) {
    return 'This action adds a new division';
  }

  async findAll() {
    const division = await Division.find();
    return division;
  }


  // async findAll() {
  //   const response  = await Division.find({ relations: ['district']});
  //   return {
  //     statusCode: HttpStatus.OK,
  //     message: 'success',
  //     data: response
  //   }
  // }
  // async findOne(id: number) {
  //   return await Division.findOne({ where: { id: id } });
  // }

  async findOne(id: number) {
    const response = await Division.findOne({ where: { id: id }, relations: ['district'] });
    return {
      statusCode: HttpStatus.OK,
      message: 'success',
      data: response
    }

  }


  async update(id: number, updateDivisionDto: UpdateDivisionDto) {
    return await Division.update({ id: id }, updateDivisionDto);
  }


  async remove(id: number) {
    return await Division.delete({ id: id });
  }
}
function findOne(id: any, number: any) {
  throw new Error('Function not implemented.');
}

