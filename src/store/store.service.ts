import { Category } from './../category/category.entity';
import { AddFormalAddressDto } from './dto/add-formal-address-dto';
import { Injectable, NotFoundException } from '@nestjs/common';
import { AddStoreDto } from './dto/add-store-dto';
import { Store } from './store.entity';
import { FormalAddress } from './formal-address.entity';
import { getRepository } from 'typeorm';

@Injectable()
export class StoreService {
	async getAll(): Promise<Store[]> {
		const result = await Store.find();

		if (!result) {
			throw new NotFoundException(`No store found`);
		}
		return result; // does not return category and formal address
	}

	async getOne(id: number): Promise<Store> {
		const result = await Store.findOne({ where: { store_id: id } });
		if (!result) {
			throw new NotFoundException(`Store with id: ${id} does not exist`);
		}
		return result; // does not return category and formal address
	}

	async create(store: AddStoreDto, formalAddress: AddFormalAddressDto, categoryId: number): Promise<Store> {
		const {
			country, division, district, thana
		} = formalAddress;

		const { store_name,
			owner_name, informal_address,
			phone, email, website, description, image, about
		} = store;

		const category = await Category.findOne({ where: { category_id: categoryId } });

		const newFormalAddress: FormalAddress = new FormalAddress();
		const newStore: Store = new Store();

		// Assigning the formal address to the store
		newFormalAddress.country = country;
		newFormalAddress.division = division;
		newFormalAddress.district = district;
		newFormalAddress.thana = thana;

		// Assigning the new store
		newStore.category = category;
		newStore.formal_address = newFormalAddress;
		newStore.store_name = store_name;
		newStore.owner_name = owner_name;
		newStore.phone = phone;
		newStore.informal_address = informal_address;
		newStore.email = email;
		newStore.website = website;
		newStore.description = description;
		newStore.image = image;
		newStore.about = about;

		await newFormalAddress.save();
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
