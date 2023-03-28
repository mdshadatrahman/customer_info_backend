import { BaseEntity } from 'typeorm';
import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn, UpdateDateColumn, DeleteDateColumn, OneToMany } from 'typeorm';
import { Store } from './store.entity';


@Entity()
export class Category extends BaseEntity{
  @PrimaryGeneratedColumn()
  category_id: number;

  @Column()
  category: string;

  @CreateDateColumn()
  created_at: Date;

  @UpdateDateColumn()
  updated_at: Date;

  @DeleteDateColumn()
  deleted_at: Date;

  @OneToMany(() => Store, store => store.category)
  stores: Store[];
  category_name: string;
}
