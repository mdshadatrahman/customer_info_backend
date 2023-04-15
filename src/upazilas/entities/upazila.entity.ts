import { District } from 'src/districts/entities/district.entity';
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
export class Upazila extends BaseEntity {

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

  @CreateDateColumn({ type: "timestamp" })
  createdAt: Date;

  @UpdateDateColumn({ type: "timestamp" })
  updatedAt: Date;

  @ManyToOne(() => District, (district) => district.upazila, {
    onDelete: "CASCADE",
  })
  district: District;

  @ManyToOne(() => Division, (division) => division.upazila, {
    onDelete: "CASCADE",
  })
  division: Division;

  @OneToMany(() => FormalAddress, (formalAddress) => formalAddress.upazila)
  formalAddress: FormalAddress[]
}

export class UpazilaFillableFields {
  name: string;
  namebn: string;
}