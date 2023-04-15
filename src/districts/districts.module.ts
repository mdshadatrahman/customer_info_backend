import { Module } from '@nestjs/common';
import { DistrictsService } from './services/districts.service';
import { DistrictsController } from './controllers/districts.controller';

@Module({
  controllers: [DistrictsController],
  providers: [DistrictsService]
})
export class DistrictsModule {}
