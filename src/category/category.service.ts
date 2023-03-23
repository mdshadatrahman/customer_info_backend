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

	async getAllCategories(): Promise<Object> {
		return {
			statusCode: 200,
			data: this.categories,
		}
	}

	async addCategory(newCategory: AddCategoryDto): Promise<Object> {
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

	async deleteCategory(categoryId: number): Promise<void> {
		const index = this.categories.findIndex(category => category.id === categoryId);

		if (!index) {
			throw new NotFoundException(`Category with id: ${categoryId} does not exist`);
		}
		this.categories.splice(index, 1);

	}
}
