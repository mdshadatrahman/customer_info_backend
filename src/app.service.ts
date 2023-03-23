import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): Object {
    return {
      statusCode: 200,
      message: 'The server is running...',
    };
  }
}
