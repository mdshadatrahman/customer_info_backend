import { Module } from '@nestjs/common';
import { UpazilasService } from './services/upazilas.service';
import { UpazilasController } from './controllers/upazilas.controller';

@Module({
  controllers: [UpazilasController],
  providers: [UpazilasService]
})
export class UpazilasModule {}
