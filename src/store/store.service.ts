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
		const result = await Store.find({
			relations: ['category', 'formal_address']
		});


		if (!result) {
			throw new NotFoundException(`No store found`);
		}
		return result;
	}

	async getOne(id: number): Promise<Store> {
		const result = await Store.findOne({
			where: { store_id: id },
			relations: ['category', 'formal_address']
		});
		if (!result) {
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

	async update(id: number, store: AddStoreDto): Promise<Store> {
		const newStore: Store = await this.getOne(id);

		// newStore.store_name = store.store_name;
		// newStore.owner_name = store.owner_name;
		// newStore.phone = store.phone;
		// newStore.address = store.address;
		// newStore.email = store.email;
		// newStore.website = store.website;
		// newStore.description = store.description;
		// newStore.image = store.image;
		// newStore.category = store.category;
		// newStore.country = store.country;
		// newStore.division = store.division;
		// newStore.city = store.city;
		// newStore.area = store.area;
		// newStore.about = store.about;
		// newStore.updated_at = new Date();

		return await newStore.save();
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
