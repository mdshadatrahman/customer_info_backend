import { BaseEntity, Column, CreateDateColumn, DeleteDateColumn, Entity, PrimaryGeneratedColumn, Unique, UpdateDateColumn } from "typeorm";

@Entity()
export class Category extends BaseEntity {
	@PrimaryGeneratedColumn()
	id: number;

	@Column()
	category_name: string;

	@CreateDateColumn()
	created_at: Date;

	@UpdateDateColumn()
	updated_at: Date;

	@DeleteDateColumn({ name: 'deleted_at' })
	deleted_at: Date;
}