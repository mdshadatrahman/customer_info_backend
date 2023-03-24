import { Store } from './dto/store-dto';
import { Injectable, NotFoundException } from '@nestjs/common';
import { AddStore } from './dto/add-store-dto';

@Injectable()
export class StoreService {
	private stores: Store[] = [
		{
			id: 0,
			name: 'City general store',
			phone: '08012345678',
			created_at: new Date(),
			updated_at: new Date(),
		},
		{
			id: 1,
			name: 'City general store',
			phone: '08012345678',
			created_at: new Date(),
			updated_at: new Date(),
		},
		{
			id: 2,
			name: 'City general store',
			phone: '08012345678',
			created_at: new Date(),
			updated_at: new Date(),
		}

	];

	async getAll(): Promise<Object> {
		return {
			statusCode: 200,
			data: this.stores,
		}
	}

	async getOne(id: number): Promise<Store> {
		return this.stores[id];
	}

	async create(store: AddStore): Promise<Object> {
		const newStore: Store = {
			id: this.stores.length,
			name: store.name,
			phone: store.phone,
			address: store.address,
			email: store.email,
			website: store.website,
			description: store.description,
			image: store.image,
			category: store.category,
			country: store.country,
			state: store.state,
			city: store.city,
			area: store.area,
			created_at: new Date(),
			updated_at: new Date(),
		}
		this.stores.push(newStore);
		return {
			statusCode: 200,
			data: this.stores[this.stores.length - 1],
		}
	}

	async update(id: number, store: AddStore): Promise<Object> {
		if (!this.getOne(id)) {
			throw new NotFoundException();
		}

		const newStore: Store = {
			id: id,
			name: store.name,
			phone: store.phone,
			address: store.address,
			email: store.email,
			website: store.website,
			description: store.description,
			image: store.image,
			category: store.category,
			country: store.country,
			state: store.state,
			city: store.city,
			area: store.area,
			created_at: new Date(),
			updated_at: new Date(),
		}

		this.stores[id] = newStore;
		return {
			statusCode: 200,
			data: this.stores[id],
		}
	}

	async delete(id: number): Promise<Object> {
		if (!this.getOne(id)) {
			throw new NotFoundException();
		}

		this.stores.splice(id, 1);
		return {
			statusCode: 200,
			data: this.stores,
		}
	}
}
