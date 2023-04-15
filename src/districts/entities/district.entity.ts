import { Upazila } from './../../upazilas/entities/upazila.entity';
import { Division } from 'src/divisions/entities/division.entity';
import { FormalAddress } from 'src/store/formal-address.entity';
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
export class District extends BaseEntity {

  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  namebn: string;

  @Column({ nullable: true })
  lat: number;

  @Column({ nullable: true })
  long: number;

  // @Column()
  // division_id: number;

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;

  @ManyToOne(() => Division, (division) => division.district, {
    onDelete: "CASCADE",
    // eager: true,
  })
  // @JoinColumn({ name: 'division_id' })
  division: Division;

  @OneToMany(() => Upazila, (upazila) => upazila.district, {
    onDelete: "CASCADE",
    cascade: ["insert", "update"],
  })
  upazila: Upazila[]

  @OneToMany(()=> FormalAddress, (formalAddress) => formalAddress.district)
  formalAddress: FormalAddress[]
}

export class DistrictFillableFields {
  name: string;
  namebn: string;
}