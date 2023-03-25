import { TypeOrmModule } from '@nestjs/typeorm';
import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CategoryModule } from './category/category.module';
import { typeOrmConfig } from './config/typeorm.config';
import { StoreModule } from './store/store.module';

@Module({
  imports: [
    TypeOrmModule.forRoot(typeOrmConfig),
    CategoryModule,
    StoreModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
