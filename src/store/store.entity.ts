import { BaseEntity, JoinColumn } from 'typeorm';
import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn, UpdateDateColumn, DeleteDateColumn, ManyToOne } from 'typeorm';
import { Category } from '../category/category.entity';
import { FormalAddress } from './formal-address.entity';

@Entity()
export class Store extends BaseEntity {
	@PrimaryGeneratedColumn()
	store_id: number;

	@Column({ nullable: true })
	store_name: string;

	@Column({ nullable: true })
	owner_name: string;

	@Column({ nullable: true })
	informal_address: string;

	@Column({ nullable: true })
	phone: string;

	@Column({ nullable: true })
	email: string;

	@Column({ nullable: true })
	website: string;

	@Column({ nullable: true })
	description: string;

	@Column({ nullable: true })
	image: string;

	@Column({ nullable: true })
	about: string;

	@ManyToOne(() => Category, category => category.stores)
	@JoinColumn({ name: "category_id" })
	category: Category;

	@ManyToOne(() => FormalAddress, formalAddress => formalAddress.stores)
	@JoinColumn({ name: "formal_address_id" })
	formal_address: FormalAddress;

	@CreateDateColumn()
	created_at: Date;

	@UpdateDateColumn()
	updated_at: Date;

	@DeleteDateColumn()
	deleted_at: Date;
}
