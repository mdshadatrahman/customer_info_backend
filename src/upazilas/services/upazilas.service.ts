import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateUpazilaDto } from '../dto/create-upazila.dto';
import { UpdateUpazilaDto } from '../dto/update-upazila.dto';
import { Upazila } from '../entities/upazila.entity';

@Injectable()
export class UpazilasService {
  create(createUpazilaDto: CreateUpazilaDto) {
    return 'This action adds a new upazila';
  }

  async findAll(): Promise<Upazila[]> {
    const upazila = await Upazila.find();
    return upazila;
  }

  async findOne(id: number): Promise<Upazila> {
    const upazila = await Upazila.findOne({ where: { id: id }, relations: ['district', 'division'] });
    if (!upazila) {
      throw new HttpException('Upazila not found', HttpStatus.NOT_FOUND);
    }
    return upazila;
  }

  update(id: number, updateUpazilaDto: UpdateUpazilaDto) {
    return `This action updates a #${id} upazila`;
  }

  remove(id: number) {
    return `This action removes a #${id} upazila`;
  }
}
