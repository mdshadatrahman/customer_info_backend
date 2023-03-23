import { AddCategoryDto } from './dto/create-category-dto';
import { CategoryService } from './category.service';
import { Body, Controller, Delete, Get, Param, ParseIntPipe, Post } from '@nestjs/common';

@Controller('category')
export class CategoryController {
	constructor(
		private readonly categoryService: CategoryService,
	) { }

	@Get()
	async getCategories(): Promise<Object> {
		return await this.categoryService.getAllCategories();
	}

	@Post()
	async addCategory(@Body() newCategory: AddCategoryDto): Promise<Object> {
		return this.categoryService.addCategory(newCategory);
	}

	@Delete(':id')
	async deleteCategory(@Param('id', ParseIntPipe) id: number): Promise<void> {
		return this.categoryService.deleteCategory(id);
	}

}
