import { FormalAddress } from 'src/store/formal-address.entity';
import { CategoryDto } from './../category/dto/category-dto';
import { Category } from './../category/category.entity';
import { AddFormalAddressDto } from './dto/add-formal-address-dto';
import { Injectable, NotFoundException } from '@nestjs/common';
import { AddStoreDto } from './dto/add-store-dto';
import { Store } from './store.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Division } from 'src/divisions/entities/division.entity';
import { District } from 'src/districts/entities/district.entity';
import { Upazila } from 'src/upazilas/entities/upazila.entity';

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

	async create(store: AddStoreDto, formalAddressDto: AddFormalAddressDto, categoryId: number): Promise<Store> {
		const category = await Category.findOne({ where: { category_id: categoryId } });

		const formalAddress: FormalAddress = new FormalAddress();

		formalAddress.division = await Division.findOneBy({ id: formalAddressDto.divisionId });
		formalAddress.district = await District.findOne({ where: { id: formalAddressDto.districtId } });
		formalAddress.upazila = await Upazila.findOne({ where: { id: formalAddressDto.upazilaId } });
		formalAddress.country = formalAddressDto.country;

		const newFormalAddress = this.formalAddressRepository.create(formalAddress);
		await newFormalAddress.save();


		store.formal_address = newFormalAddress;
		store.category = category;
		console.log(category);

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
		const result = await this.getOne(id);

		if (!result) {
			throw new NotFoundException(`Store with id: ${id} does not exist`);
		}

		await this.storeRepository.softDelete(id);

		return {
			statusCode: 204,
			data: 'Store deleted successfully',
		}
	}
}
