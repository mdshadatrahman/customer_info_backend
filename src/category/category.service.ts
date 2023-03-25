import { AddCategoryDto } from './dto/create-category-dto';
import { ConflictException, Injectable, NotFoundException } from '@nestjs/common';
import { Category } from './category.entity';

@Injectable()
export class CategoryService {

	async getAll(): Promise<Category[]> {
		return await Category.find();
	}

	async getOne(id: number): Promise<Category> {
		const category = await Category.findOne({ where: { id: id } });
		if (!category) {
			throw new NotFoundException(`Category with id: ${id} does not exist`);
		}
		return category;
	}

	async add(newCategory: AddCategoryDto): Promise<Category> {
		const category = new Category();
		category.category_name = newCategory.category_name;

		console.log(category);

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
		const result = await Category.delete(id); //TODO check if id exists
		return this.getAll();
	}

	// async update(id: number, addCategoryDto: AddCategoryDto): Promise<CategoryDto> {
	// 	var index: number;
	// 	for (var i = 0; i < this.categories.length; i++) {
	// 		if (this.categories[i].id === id) {
	// 			index = i;
	// 			break;
	// 		}
	// 	}

	// 	if (index === undefined) {
	// 		throw new NotFoundException(`Category with id: ${id} does not exist`);
	// 	}
	// 	this.categories[index].categoryName = addCategoryDto.categoryName;
	// 	return this.categories[index];

	// }
}
