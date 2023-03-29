import { TypeOrmModule } from '@nestjs/typeorm';
import { Module } from '@nestjs/common';
import { StoreController } from './store.controller';
import { StoreService } from './store.service';
import { Store } from './store.entity';
import { FormalAddress } from './formal-address.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Store, StoreModule])
  ],
  controllers: [StoreController],
  providers: [StoreService]
})
export class StoreModule { }
