import { AddCategoryDto } from './dto/create-category-dto';
import { CategoryService } from './category.service';
import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post } from '@nestjs/common';
import { Category } from './dto/category-dto';

@Controller('category')
export class CategoryController {
	constructor(
		private readonly categoryService: CategoryService,
	) { }

	@Get()
	async getCategories(): Promise<Object> {
		return await this.categoryService.getAll();
	}

	@Post()
	async addCategory(@Body() newCategory: AddCategoryDto): Promise<Object> {
		return this.categoryService.add(newCategory);
	}

	@Delete(':id')
	async deleteCategory(@Param('id', ParseIntPipe) id: number): Promise<void> {
		return this.categoryService.delete(id);
	}

	@Patch(':id')
	async updateCategory(@Param('id', ParseIntPipe) id: number, @Body() addCategoryDto: AddCategoryDto): Promise<Category> {
		return this.categoryService.update(id, addCategoryDto);
	}

}
