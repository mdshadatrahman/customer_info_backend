import { TypeOrmModuleOptions } from "@nestjs/typeorm";

export const typeOrmConfig: TypeOrmModuleOptions = {
	// type: 'mysql',
	// host: 'localhost',
	// port: 3306,
	// username: 'shadat',
	// password: 'root',
	// database: 'customerinfo',
	type: 'mysql',
	host: 'localhost',
	port: 3306,
	username: 'shadatxy_shadat',
	password: 'gmjmnh#Y^vCA',
	database: 'shadatxy_customerinfo',
	entities: [__dirname + '/../**/*.entity.{js,ts}'],
	autoLoadEntities: true,
	synchronize: true,
}