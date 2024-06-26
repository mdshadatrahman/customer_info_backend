import { Logger } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const logger = new Logger('bootstrap');
  const app = await NestFactory.create(AppModule);

  const port = 3001;
  await app.listen(port);
  logger.log(`Application listening on port ${port}`);

}
bootstrap();
