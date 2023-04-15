import { Module } from '@nestjs/common';
import { DivisionsService } from './services/divisions.service';
import { DivisionsController } from './controllers/divisions.controller';
import { Division } from './entities/division.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([Division])],
  controllers: [DivisionsController],
  providers: [DivisionsService]
})
export class DivisionsModule {}
