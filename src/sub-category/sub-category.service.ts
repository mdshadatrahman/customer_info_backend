import { HttpException, Injectable, NotFoundException } from '@nestjs/common';
import { CreateSubCategoryDto } from './dto/create-sub-category.dto';
import { UpdateSubCategoryDto } from './dto/update-sub-category.dto';
import { Category } from 'src/category/category.entity';
import { SubCategory } from './entities/sub-category.entity';
import { response } from 'express';

@Injectable()
export class SubCategoryService {
  async create(createSubCategoryDto: CreateSubCategoryDto): Promise<SubCategory> {
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

  async findAll(): Promise<SubCategory[]> {
    const subCategory = await SubCategory.find({ relations: ['category'] });
    return subCategory;
  }

  async findOne(id: number): Promise<SubCategory> {
    const subCategory = await SubCategory.findOne({ where: { subCategory_id: id }, relations: ['category'] });
    if (!subCategory) {
      throw new NotFoundException(`Sub-category with id: ${id} not found.`)
    }
    return subCategory;
  }

  async update(id: number, updateSubCategoryDto: UpdateSubCategoryDto): Promise<SubCategory> {
    const subCategory = await SubCategory.findOne({ where: { subCategory_id: id } });
    if (!subCategory) {
      throw new NotFoundException(`Sub-category with id: ${id} not found.`)
    }
    console.log(subCategory);

    subCategory.subCategory_name = updateSubCategoryDto.sub_category_name;
    await subCategory.save();
    console.log(subCategory);

    return subCategory;
  }

  async remove(id: number): Promise<void> {
    await this.findOne(id);
    await SubCategory.delete(id);
    throw new HttpException('Deleted', 204)
  }
}
