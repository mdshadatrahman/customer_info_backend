import { BaseEntity, Column, Entity, PrimaryGeneratedColumn, Unique } from "typeorm";

@Entity()
export class Category extends BaseEntity {
	@PrimaryGeneratedColumn()
	id: number;

	@Column()
	category_name: string;
}