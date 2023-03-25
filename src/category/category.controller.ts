import { AddCategoryDto } from './dto/create-category-dto';
import { CategoryService } from './category.service';
import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post } from '@nestjs/common';
import { Category } from './category.entity';

@Controller('category')
export class CategoryController {
	constructor(
		private readonly categoryService: CategoryService,
	) { }

	@Get()
	async getCategories(): Promise<Category[]> {
		return await this.categoryService.getAll();
	}

	@Get(':id')
	async getCategory(@Param('id', ParseIntPipe) id: number): Promise<Category> {
		return await this.categoryService.getOne(id);
	}

	@Post()
	async addCategory(@Body() newCategory: AddCategoryDto): Promise<Category> {
		return this.categoryService.add(newCategory);
	}

	@Delete(':id')
	async deleteCategory(@Param('id', ParseIntPipe) id: number): Promise<Category[]> {
		return this.categoryService.delete(id);
	}

	// @Patch(':id')
	// async updateCategory(@Param('id', ParseIntPipe) id: number, @Body() addCategoryDto: AddCategoryDto): Promise<CategoryDto> {
	// 	return this.categoryService.update(id, addCategoryDto);
	// }

}
