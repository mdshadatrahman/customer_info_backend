import { BaseEntity } from 'typeorm';
import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn, UpdateDateColumn, DeleteDateColumn, OneToMany } from 'typeorm';
import { Store } from '../store/store.entity';

@Entity()
export class FormalAddress extends BaseEntity {
	@PrimaryGeneratedColumn()
	formal_address_id: number;

	@Column({ nullable: true })
	country: string;

	@Column({ nullable: true })
	division: string;

	@Column({ nullable: true })
	district: string;

	@Column({ nullable: true })
	thana: string;

	@CreateDateColumn()
	created_at: Date;

	@UpdateDateColumn()
	updated_at: Date;

	@DeleteDateColumn()
	deleted_at: Date;

	@OneToMany(() => Store, store => store.formal_address)
	stores: Store[];
}
