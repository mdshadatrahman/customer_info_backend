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
	async getAll(): Promise<Category[]> {
		return await this.categoryService.getAll();
	}

	@Get(':id')
	async getOne(@Param('id', ParseIntPipe) id: number): Promise<Category> {
		return await this.categoryService.getOne(id);
	}

	@Post()
	async add(@Body() newCategory: AddCategoryDto): Promise<Category> {
		return this.categoryService.add(newCategory);
	}

	@Delete(':id')
	async delete(@Param('id', ParseIntPipe) id: number): Promise<Category[]> {
		return this.categoryService.delete(id);
	}

	@Patch(':id')
	async update(@Param('id', ParseIntPipe) id: number, @Body() addCategoryDto: AddCategoryDto): Promise<Category> {
		return this.categoryService.update(id, addCategoryDto);
	}

}
