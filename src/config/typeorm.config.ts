import { TypeOrmModuleOptions } from "@nestjs/typeorm";

export const typeOrmConfig: TypeOrmModuleOptions = {
	type: 'postgres',
	host: 'customerinfoshadat.postgres.database.azure.com',
	port: 5432,
	username: 'shadat',
	password: 'Madam007$',
	database: 'postgres',
	entities: [__dirname + '/../**/*.entity.{js,ts}'],
	autoLoadEntities: true,
	synchronize: true,
	ssl: true,
}