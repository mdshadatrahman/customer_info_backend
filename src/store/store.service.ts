import { Injectable, NotFoundException } from '@nestjs/common';
import { Category } from 'src/category/category.entity';
import { AddStoreDto } from './dto/add-store-dto';
import { Store } from './store.entity';

@Injectable()
export class StoreService {
	async getAll(): Promise<Store[]> {
		return await Store.find();
	}

	async getOne(id: number): Promise<Store> {
		const result = await Store.findOne({ where: { store_id: id } });
		if (!result) {
			throw new NotFoundException(`Store with id: ${id} does not exist`);
		}
		return result;
	}

	async create(store: AddStoreDto): Promise<Store> {
		const { category, formal_address, store_name,
			owner_name, informal_address,
			phone, email, website, description, image, about
		} = store;

		const newStore: Store = new Store();

		newStore.category = category;
		newStore.formal_address = formal_address;
		newStore.store_name = store_name;
		newStore.owner_name = owner_name;
		newStore.phone = phone;
		newStore.informal_address = informal_address;
		newStore.email = email;
		newStore.website = website;
		newStore.description = description;
		newStore.image = image;
		newStore.about = about;

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
