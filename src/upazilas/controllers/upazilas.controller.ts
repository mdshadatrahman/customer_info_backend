import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { UpazilasService } from '../services/upazilas.service';
import { CreateUpazilaDto } from '../dto/create-upazila.dto';
import { UpdateUpazilaDto } from '../dto/update-upazila.dto';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('Upazilas')
@Controller({
  version: '1',
  path: 'upazilas',
})
@Controller('upazilas')
export class UpazilasController {
  constructor(private readonly upazilasService: UpazilasService) { }

  @Post()
  create(@Body() createUpazilaDto: CreateUpazilaDto) {
    return this.upazilasService.create(createUpazilaDto);
  }

  @Get()
  findAll() {
    return this.upazilasService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.upazilasService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateUpazilaDto: UpdateUpazilaDto) {
    return this.upazilasService.update(+id, updateUpazilaDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.upazilasService.remove(+id);
  }
}
