import { BaseEntity, Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Store extends BaseEntity {
	@PrimaryGeneratedColumn()
	id: number;

	@Column()
	store_name: string;


	@Column()
	owner_name: string;

	@Column()
	phone: string;

	@Column()
	address: string;

	@Column({
		nullable: true,
	})
	email: string;

	@Column({
		nullable: true,
	})
	website: string;

	@Column({
		nullable: true,
	})
	description: string;

	@Column({
		nullable: true,
	})
	image: string;

	@Column({
		nullable: true,
	})
	category: string;

	@Column({
		nullable: true,
	})
	country: string;

	@Column({
		nullable: true,
	})
	division: string;

	@Column({
		nullable: true,
	})
	city: string;

	@Column({
		nullable: true,
	})
	area: string;

	@Column({
		nullable: true,
	})
	about: string;

	@Column()
	created_at: Date;

	@Column()
	updated_at: Date;

}