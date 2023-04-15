import { District } from 'src/districts/entities/district.entity';
import { Upazila } from 'src/upazilas/entities/upazila.entity';
import {
  BaseEntity,
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
  Unique,
  JoinColumn,
  UpdateDateColumn,
  OneToMany,
} from 'typeorm';

@Entity()
export class Division extends BaseEntity {

  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  namebn: string;

  @Column({ type: 'double precision', default: 0, })
  lat: number;

  @Column({ type: 'double precision', default: 0, })
  long: number;

  @CreateDateColumn({ type: 'timestamp' })
  createdAt: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  updatedAt: Date;

  @OneToMany(() => District, (district) => district.division, {
    onDelete: "CASCADE",
    cascade: ["insert", "update"],
  })
  district: District[]

  @OneToMany(() => Upazila, (upazila) => upazila.division, {
    onDelete: "CASCADE",
    cascade: ["insert", "update"],
  })
  upazila: Upazila[]
}

export class DivisionFillableFields {
  name: string;
  bnname: string;
}

