import { Store } from 'src/store/store.entity';
import { Category } from './../../category/category.entity';
import { BaseEntity, Column, CreateDateColumn, DeleteDateColumn, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn, UpdateDateColumn } from "typeorm";

@Entity()
export class SubCategory extends BaseEntity {
	@PrimaryGeneratedColumn()
	subCategory_id: number;

	@Column()
	subCategory_name: string;

	@CreateDateColumn()
	created_at: Date;

	@UpdateDateColumn()
	updated_at: Date;

	@DeleteDateColumn()
	deleted_at: Date;

	@ManyToOne(() => Category, category => category.subCategories)
	@JoinColumn({ name: "category_id" })
	category: Category;

	@OneToMany(() => Store, store => store.subcategory)
	stores: Store[];
}
