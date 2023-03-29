import { BaseEntity } from 'typeorm';
import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn, UpdateDateColumn, DeleteDateColumn, ManyToOne } from 'typeorm';
import { Category } from '../category/category.entity';
import { FormalAddress } from '../category/formal-address.entity';

@Entity()
export class Store extends BaseEntity {
	@PrimaryGeneratedColumn()
	store_id: number;

	@ManyToOne(() => Category, category => category.stores)
	category: Category;

	@ManyToOne(() => FormalAddress, formalAddress => formalAddress.stores)
	formal_address: FormalAddress;

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

	@CreateDateColumn()
	created_at: Date;

	@UpdateDateColumn()
	updated_at: Date;

	@DeleteDateColumn()
	deleted_at: Date;
}
