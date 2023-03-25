import { TypeOrmModuleOptions } from "@nestjs/typeorm";

export const typeOrmConfig: TypeOrmModuleOptions = {
	type: 'postgres',
	host: 'localhost',
	port: 5432,
	username: 'root',
	password: 'root',
	database: 'customerinfo',
	entities: [__dirname + '/../**/*.entity.{js,ts}'],
	autoLoadEntities: true,
	synchronize: true,
}