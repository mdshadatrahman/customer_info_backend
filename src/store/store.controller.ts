import { AddStoreDto } from './dto/add-store-dto';
import { StoreService } from './store.service';
import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, UsePipes, ValidationPipe } from '@nestjs/common';
import { Store } from './store.entity';


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
	async create(@Body() store: AddStoreDto): Promise<Store> {
		return await this.storeService.create(store);
	}

	@Patch(':id')
	@UsePipes(ValidationPipe)
	async update(@Param('id', ParseIntPipe) id: number, @Body() store: AddStoreDto): Promise<Store> {
		return await this.storeService.update(id, store);
	}

	@Delete(':id')
	async delete(@Param('id', ParseIntPipe) id: number): Promise<Object> {
		return await this.storeService.delete(id);
	}
}
