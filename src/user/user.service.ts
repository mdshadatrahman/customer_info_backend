import { LoginUserDto } from './dto/login-user.dto';
import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { sign } from 'jsonwebtoken';
import { UserEntity } from './entities/user.entity';
import { UserResponseInterface } from './types/userResponse.interface';
import { JWT_TOKEN } from 'src/config';


@Injectable()
export class UserService {
	constructor(
		@InjectRepository(UserEntity)
		private readonly userRepository: Repository<UserEntity>,
	) { }

	async create(createUserDto: CreateUserDto): Promise<UserEntity> {

		const userByPhone = await this.userRepository.findOne({
			where: { phone: createUserDto.phone }
		});

		if (userByPhone) {
			throw new HttpException('Email or username is already taken', HttpStatus.UNPROCESSABLE_ENTITY);
		}

		const newUser = new UserEntity();
		Object.assign(newUser, createUserDto);
		return await this.userRepository.save(newUser);
	}

	async findOneById(id: number): Promise<UserEntity> {
		return this.userRepository.findOne({ where: { id: id } });
	}

	async login(loginUserDto: LoginUserDto): Promise<UserEntity> {
		const user = await this.userRepository.findOne({
			where: { phone: loginUserDto.phone },
			select: ['id', 'name', 'password', 'phone', 'power'],
		});

		if (!user) {
			throw new HttpException('Invalid Credentials', HttpStatus.UNPROCESSABLE_ENTITY);
		}

		const validUser = loginUserDto.password === user.password;

		if (!validUser) {
			throw new HttpException('Invalid Credentials', HttpStatus.UNPROCESSABLE_ENTITY);
		}
		delete user.password;
		return user;
	}


	generateJwt(user: UserEntity): string {
		return sign({
			id: user.id,
			username: user.name,
			email: user.phone,
		},
			JWT_TOKEN
		);
	}

	buildUserResponse(user: UserEntity): UserResponseInterface {
		return {
			user: {
				...user,
				token: this.generateJwt(user)
			}
		}
	}
}
