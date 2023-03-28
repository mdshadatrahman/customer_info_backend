import { Store } from './store.entity';
import { FormalAddress } from './formal-address.entity';
import { Category } from './category.entity';
import { CacheModule, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CategoryController } from './category.controller';
import { CategoryService } from './category.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([Category, FormalAddress, Store, CacheModule]),
  ],
  controllers: [CategoryController],
  providers: [CategoryService]
})
export class CategoryModule { }
