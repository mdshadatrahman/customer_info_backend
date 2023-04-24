import { TypeOrmModule } from '@nestjs/typeorm';
import { MiddlewareConsumer, Module, RequestMethod } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CategoryModule } from './category/category.module';
import { typeOrmConfig } from './config/typeorm.config';
import { StoreModule } from './store/store.module';
import { DivisionsModule } from './divisions/divisions.module';
import { DistrictsModule } from './districts/districts.module';
import { UpazilasModule } from './upazilas/upazilas.module';
import { SubCategoryModule } from './sub-category/sub-category.module';
import { UserModule } from './user/user.module';
import { AuthMiddleware } from './user/middlewares/auth.middleware';

@Module({
  imports: [
    TypeOrmModule.forRoot(typeOrmConfig),
    CategoryModule,
    StoreModule,
    DivisionsModule,
    DistrictsModule,
    UpazilasModule,
    SubCategoryModule,
    UserModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {
  configure(consumer: MiddlewareConsumer) {
    consumer.apply(AuthMiddleware).forRoutes({
      path: '*',
      method: RequestMethod.ALL,
    });
  }
}
