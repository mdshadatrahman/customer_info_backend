import { AddStore } from './dto/add-store-dto';
import { Store } from './dto/store-dto';
import { StoreService } from './store.service';
import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, UsePipes, ValidationPipe } from '@nestjs/common';

@Controller('store')
export class StoreController {
	constructor(
		private readonly storeService: StoreService,
	) { }

	@Get()
	async getAll() {
		return await this.storeService.getAll();
	}

	@Get(':id')
	async getOne(@Param('id', ParseIntPipe) id: number): Promise<Store> {
		return await this.storeService.getOne(id);
	}

	@Post()
	@UsePipes(ValidationPipe)
	async create(@Body() store: AddStore) {
		return await this.storeService.create(store);
	}

	@Patch(':id')
	@UsePipes(ValidationPipe)
	async update(@Param('id', ParseIntPipe) id: number, @Body() store: AddStore) {
		return await this.storeService.update(id, store);
	}

	@Delete(':id')
	async delete(@Param('id', ParseIntPipe) id: number) {
		return await this.storeService.delete(id);
	}
}
