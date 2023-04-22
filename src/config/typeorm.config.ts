import { TypeOrmModuleOptions } from "@nestjs/typeorm";

export const typeOrmConfig: TypeOrmModuleOptions = {
	// type: 'postgres',
	// host: 'localhost',
	// port: 5432,
	// username: 'postgres',
	// password: 'root',
	// database: 'customerinfo',
	type: 'mysql',
	host: 'localhost',
	port: 3306,
	username: 'shadat',
	password: 'root',
	database: 'customerinfo',
	entities: [__dirname + '/../**/*.entity.{js,ts}'],
	autoLoadEntities: true,
	synchronize: true,
}