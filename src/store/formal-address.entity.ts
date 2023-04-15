import { BaseEntity, ManyToOne } from 'typeorm';
import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn, UpdateDateColumn, DeleteDateColumn, OneToMany } from 'typeorm';
import { Store } from './store.entity';
import { Division } from 'src/divisions/entities/division.entity';
import { District } from 'src/districts/entities/district.entity';
import { Upazila } from 'src/upazilas/entities/upazila.entity';

@Entity()
export class FormalAddress extends BaseEntity {
	@PrimaryGeneratedColumn()
	formal_address_id: number;

	@Column({ nullable: true })
	country: string;

	@ManyToOne(() => Division, division => division.formalAddress)
	division: Division;

	@ManyToOne(() => District, district => district.formalAddress)
	district: District;

	@ManyToOne(() => Upazila, upazila => upazila.formalAddress)
	upazila: Upazila;

	@CreateDateColumn()
	created_at: Date;

	@UpdateDateColumn()
	updated_at: Date;

	@DeleteDateColumn()
	deleted_at: Date;

	@OneToMany(() => Store, store => store.formal_address)
	stores: Store[];
}
