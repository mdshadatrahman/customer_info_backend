import { Category } from './dto/category-dto';
import { AddCategoryDto } from './dto/create-category-dto';
import { ConflictException, Injectable, NotFoundException, Logger } from '@nestjs/common';

@Injectable()
export class CategoryService {
	private categories: Category[] = [
		{
			id: 0,
			categoryName: 'Individual',
		},
		{
			id: 1,
			categoryName: 'Store',
		},
		{
			id: 2,
			categoryName: 'Oil Pump',
		},
		{
			id: 3,
			categoryName: 'Factory',
		},
		{
			id: 4,
			categoryName: 'Warehouse',
		},
		{
			id: 5,
			categoryName: 'Office',
		},
		{
			id: 6,
			categoryName: 'Other',
		}
	];

	async getAll(): Promise<Object> {
		return {
			statusCode: 200,
			data: this.categories,
		}
	}

	async add(newCategory: AddCategoryDto): Promise<Object> {
		if (this.categories.find(category => category.categoryName.toLowerCase().trim() === newCategory.categoryName.toLowerCase().trim())) {
			throw new ConflictException(`Category: ${newCategory.categoryName} already exists`);
		}

		this.categories.push({
			id: this.categories.length + 1,
			categoryName: newCategory.categoryName,
		});

		return {
			statusCode: 200,
			data: this.categories,
		}
	}

	async delete(id: number): Promise<void> {
		// const index = this.categories.findIndex(category => category.id === categoryId);
		var index: number;
		for (var i = 0; i < this.categories.length; i++) {
			if (this.categories[i].id === id) {
				index = i;
				break;
			}
		}


		if (index === undefined) {
			throw new NotFoundException(`Category with id: ${id} does not exist`);
		}
		this.categories.splice(index, 1);
	}

	async update(id: number, addCategoryDto: AddCategoryDto): Promise<Category> {
		var index: number;
		for (var i = 0; i < this.categories.length; i++) {
			if (this.categories[i].id === id) {
				index = i;
				break;
			}
		}

		if (index === undefined) {
			throw new NotFoundException(`Category with id: ${id} does not exist`);
		}
		this.categories[index].categoryName = addCategoryDto.categoryName;
		return this.categories[index];

	}
}
