import { AddFormalAddressDto } from './dto/add-formal-address-dto';
import { AddStoreDto } from './dto/add-store-dto';
import { StoreService } from './store.service';
import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, UseGuards, UsePipes, ValidationPipe } from '@nestjs/common';
import { Store } from './store.entity';
import { AuthGuard } from 'src/user/guards/auth.guard';


@Controller('store')
export class StoreController {
	constructor(
		private readonly storeService: StoreService,
	) { }

	@Get()
	@UseGuards(AuthGuard)
	async getAll() {
		return await this.storeService.getAll();
	}

	@Get(':id')
	@UseGuards(AuthGuard)
	async getOne(@Param('id', ParseIntPipe) id: number): Promise<Store> {
		return await this.storeService.getOne(id);
	}

	@Post()
	@UseGuards(AuthGuard)
	@UsePipes(ValidationPipe)
	async create(@Body() store: AddStoreDto, @Body() formalAddress: AddFormalAddressDto, @Body('category') categoryId: number): Promise<Store> {
		console.log(categoryId)
		return await this.storeService.create(store, formalAddress, categoryId);
	}

	@Patch(':id')
	@UseGuards(AuthGuard)
	@UsePipes(ValidationPipe)
	async update(@Param('id', ParseIntPipe) id: number, @Body('category', ParseIntPipe) category: number, @Body() store: AddStoreDto, @Body() formalAddress: AddFormalAddressDto): Promise<Store> {
		return await this.storeService.update(id, store, category, formalAddress);
	}

	@Delete(':id')
	@UseGuards(AuthGuard)
	async delete(@Param('id', ParseIntPipe) id: number): Promise<Object> {
		return await this.storeService.delete(id);
	}

	@Get('category/:id')
	@UseGuards(AuthGuard)
	async getStoreByCategory(@Param('id', ParseIntPipe) categoryId: number): Promise<Store[]> {
		return await this.storeService.getStoreByCategory(categoryId);
	}

	@Get('sub-category/:id')
	@UseGuards(AuthGuard)
	async getStoreBySubCategory(@Param('id', ParseIntPipe) id: number): Promise<Store[]> {
		return await this.storeService.getStoreBySubCategory(id);
	}

	@Get('division/:id')
	@UseGuards(AuthGuard)
	async getStoresByDivisionId(@Param('id', ParseIntPipe) id: number): Promise<Store[]> {
		return await this.storeService.getStoresByDivisionId(id);
	}

	@Get('district/:id')
	@UseGuards(AuthGuard)
	async getStoresByDistrictId(@Param('id', ParseIntPipe) id: number): Promise<Store[]> {
		return await this.storeService.getStoresByDistrictId(id);
	}

	@Get('upazila/:id')
	@UseGuards(AuthGuard)
	async getStoresByUpazilaId(@Param('id', ParseIntPipe) id: number): Promise<Store[]> {
		return await this.storeService.getStoresByUpazilaId(id);
	}
}
