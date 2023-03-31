import { CategoryDto } from './../category/dto/category-dto';
import { Category } from './../category/category.entity';
import { AddFormalAddressDto } from './dto/add-formal-address-dto';
import { Injectable, NotFoundException } from '@nestjs/common';
import { AddStoreDto } from './dto/add-store-dto';
import { Store } from './store.entity';
import { FormalAddress } from './formal-address.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class StoreService {
	constructor(
		@InjectRepository(Store)
		private storeRepository: Repository<Store>,

		@InjectRepository(FormalAddress)
		private formalAddressRepository: Repository<FormalAddress>,
	) { }

	async getAll(): Promise<Store[]> {
		const result = this.storeRepository.find({
			relations: ['category', 'formal_address'],
		});

		if (!result) {
			throw new NotFoundException(`No store found`);
		}
		return result;
	}

	async getOne(id: number): Promise<Store> {
		const result = this.storeRepository.findOne({
			where: { store_id: id },
			relations: ['category', 'formal_address']
		});

		if (! await result) {
			throw new NotFoundException(`Store with id: ${id} does not exist`);
		}
		return result;
	}

	async create(store: AddStoreDto, formalAddress: AddFormalAddressDto, categoryId: number): Promise<Store> {
		const category = await Category.findOne({ where: { category_id: categoryId } });

		const newFormalAddress = this.formalAddressRepository.create(formalAddress);
		await newFormalAddress.save();


		store.formal_address = newFormalAddress;
		store.category = category;

		const newStore = this.storeRepository.create(store);
		return await newStore.save();
	}

	async update(id: number, store: AddStoreDto, category_id: number, formalAddress: AddFormalAddressDto): Promise<Store> {

		const findStore = this.storeRepository.findOne({
			where: { store_id: id },
			relations: ['category', 'formal_address'],
		});

		if (! await findStore) {
			throw new NotFoundException(`Store with id: ${id} does not exist`);
		}

		const newFormalAddress = this.formalAddressRepository.create(formalAddress);
		await newFormalAddress.save();

		store.formal_address = newFormalAddress;
		store.category = await Category.findOne({ where: { category_id: category_id } });



		return this.storeRepository.save({
			...await findStore,
			...store,
		});

	}


	async delete(id: number): Promise<Object> {
		await this.getOne(id);
		await Store.delete(id);
		return {
			statusCode: 200,
			data: 'Store deleted successfully',
		}
	}
}
