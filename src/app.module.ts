import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CategoryModule } from './category/category.module';
import { StoreModule } from './store/store.module';

@Module({
  imports: [CategoryModule, StoreModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
