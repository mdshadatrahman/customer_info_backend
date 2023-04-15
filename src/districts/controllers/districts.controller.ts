import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { DistrictsService } from '../services/districts.service';
import { CreateDistrictDto } from '../dto/create-district.dto';
import { UpdateDistrictDto } from '../dto/update-district.dto';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('Districts')
@Controller({
  version: '1',
  path: 'districts',
})
@Controller('districts')
export class DistrictsController {
  constructor(private readonly districtsService: DistrictsService) { }


  @Get()
  findAll() {
    return this.districtsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.districtsService.findOne(+id);
  }
}
