import { AddCategoryDto } from './dto/create-category-dto';
import { ConflictException, Injectable, NotFoundException } from '@nestjs/common';
import { Category } from './category.entity';


@Injectable()
export class CategoryService {

	async getAll(): Promise<Category[]> {
		return await Category.find();
	}

	async getOne(id: number): Promise<Category> {
		const category = await Category.findOne({ where: { category_id: id } });
		if (!category) {
			throw new NotFoundException(`Category with id: ${id} does not exist`);
		}
		return category;
	}

	async add(newCategory: AddCategoryDto): Promise<Category> {
		const category = new Category();
		category.category_name = newCategory.category_name;

		try {
			await category.save();
			return category;
		} catch (error) {
			if (error.code === '23505') {
				console.log('Category already exists');
				throw new ConflictException('Category already exists');
			}

		}
	}

	async delete(id: number): Promise<Category[]> {
		await this.getOne(id);
		await Category.delete(id);
		return this.getAll();
	}

	async update(id: number, addCategoryDto: AddCategoryDto): Promise<Category> {
		const category = await this.getOne(id);
		category.category_name = addCategoryDto.category_name;
		await category.save();
		return category;
	}
}
