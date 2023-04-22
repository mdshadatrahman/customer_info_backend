import { HttpException, Injectable, NotFoundException } from '@nestjs/common';
import { CreateSubCategoryDto } from './dto/create-sub-category.dto';
import { UpdateSubCategoryDto } from './dto/update-sub-category.dto';
import { Category } from 'src/category/category.entity';
import { SubCategory } from './entities/sub-category.entity';

@Injectable()
export class SubCategoryService {
  async create(createSubCategoryDto: CreateSubCategoryDto) {
    const category = await Category.findOne({ where: { category_id: createSubCategoryDto.category_id } });

    if (!category) {
      throw new NotFoundException('Category not found');
    }

    const subCategory = new SubCategory();

    subCategory.subCategory_name = createSubCategoryDto.sub_category_name;
    subCategory.category = category;
    await subCategory.save();

    return subCategory;

  }

  findAll() {
    return `This action returns all subCategory`;
  }

  findOne(id: number) {
    return `This action returns a #${id} subCategory`;
  }

  update(id: number, updateSubCategoryDto: UpdateSubCategoryDto) {
    return `This action updates a #${id} subCategory`;
  }

  remove(id: number) {
    return `This action removes a #${id} subCategory`;
  }
}
