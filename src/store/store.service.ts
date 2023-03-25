import { Injectable,  NotFoundException } from '@nestjs/common';
import { AddStoreDto } from './dto/add-store-dto';
import { Store } from './store.entity';

@Injectable()
export class StoreService {
	async getAll(): Promise<Store[]> {
		return await Store.find();
	}

	async getOne(id: number): Promise<Store> {
		const result = await Store.findOne({ where: { id: id } });
		if (!result) {
			throw new NotFoundException(`Store with id: ${id} does not exist`);
		}
		return result;
	}

	async create(store: AddStoreDto): Promise<Store> {
		const newStore = new Store();
		newStore.store_name = store.store_name;
		newStore.owner_name = store.owner_name;
		newStore.phone = store.phone;
		newStore.address = store.address;
		newStore.email = store.email;
		newStore.website = store.website;
		newStore.description = store.description;
		newStore.image = store.image;
		newStore.category = store.category;
		newStore.country = store.country;
		newStore.division = store.division;
		newStore.city = store.city;
		newStore.area = store.area;
		newStore.about = store.about;
		newStore.created_at = new Date();
		newStore.updated_at = new Date();

		return await newStore.save();

	}

	async update(id: number, store: AddStoreDto): Promise<Store> {
		const newStore: Store = await this.getOne(id);

		newStore.store_name = store.store_name;
		newStore.owner_name = store.owner_name;
		newStore.phone = store.phone;
		newStore.address = store.address;
		newStore.email = store.email;
		newStore.website = store.website;
		newStore.description = store.description;
		newStore.image = store.image;
		newStore.category = store.category;
		newStore.country = store.country;
		newStore.division = store.division;
		newStore.city = store.city;
		newStore.area = store.area;
		newStore.about = store.about;
		newStore.updated_at = new Date();

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
