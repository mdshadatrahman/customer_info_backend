import { FormalAddress } from 'src/store/formal-address.entity';
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
import { SubCategory } from 'src/sub-category/entities/sub-category.entity';

@Injectable()
export class StoreService {
	constructor(
		@InjectRepository(Store)
		private storeRepository: Repository<Store>,

		@InjectRepository(FormalAddress)
		private formalAddressRepository: Repository<FormalAddress>,
	) { }

	async getAll(): Promise<Store[]> {
		const result = this.storeRepository.find();
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
		const subCategory = await SubCategory.findOne({ where: { subCategory_id: store.subCategory_id } });

		if (!subCategory) {
			throw new NotFoundException(`Subcategory with id: ${store.subCategory_id} not found`)
		}
		console.log(subCategory);

		const formalAddress: FormalAddress = new FormalAddress();

		formalAddress.division = await Division.findOneBy({ id: formalAddressDto.divisionId });
		formalAddress.district = await District.findOne({ where: { id: formalAddressDto.districtId } });
		formalAddress.upazila = await Upazila.findOne({ where: { id: formalAddressDto.upazilaId } });
		formalAddress.country = formalAddressDto.country;

		const newFormalAddress = this.formalAddressRepository.create(formalAddress);
		await newFormalAddress.save();


		store.formal_address = newFormalAddress;
		store.category = category;


		const newStore = this.storeRepository.create(store);
		newStore.subcategory = subCategory;

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

	async getStoreByCategory(categoryId: number): Promise<Store[]> {
		const result = this.storeRepository.find({
			where: { category: { category_id: categoryId } },
			relations: ['category', 'formal_address'],
		});

		if (!result) {
			throw new NotFoundException(`No store found`);
		}
		return result;
	}

	async getStoreBySubCategory(id: number): Promise<Store[]> {
		const store = await this.storeRepository.find({ where: { subcategory: { subCategory_id: id } }, relations: ['category', 'formal_address', 'subcategory'] });
		return store;
	}

	async getStoresByDivisionId(id: number): Promise<Store[]> {
		const store = await this.storeRepository.find({ where: { formal_address: { division: { id: id } } }, relations: ['category', 'formal_address', 'subcategory'] });
		return store;
	}

	async getStoresByDistrictId(id: number): Promise<Store[]> {
		const store = await this.storeRepository.find({ where: { formal_address: { district: { id: id } } }, relations: ['category', 'formal_address', 'subcategory'] });
		return store;
	}

	async getStoresByUpazilaId(id: number): Promise<Store[]> {
		const store = await this.storeRepository.find({ where: { formal_address: { upazila: { id: id } } }, relations: ['category', 'formal_address', 'subcategory'] });
		return store;
	}
}
