import { TypeOrmModule } from '@nestjs/typeorm';
import { Module } from '@nestjs/common';
import { StoreController } from './store.controller';
import { StoreService } from './store.service';
import { Store } from './store.entity';
import { FormalAddress } from './formal-address.entity';
import { AuthGuard } from 'src/user/guards/auth.guard';

@Module({
  imports: [
    TypeOrmModule.forFeature([Store, StoreModule, FormalAddress])
  ],
  controllers: [StoreController],
  providers: [StoreService, AuthGuard]
})
export class StoreModule { }
