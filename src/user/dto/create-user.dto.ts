import { IsEmail, IsNotEmpty, IsPhoneNumber } from "class-validator";

export class CreateUserDto implements Readonly<CreateUserDto>{
	@IsNotEmpty()
	readonly name: string;

	@IsNotEmpty()
	readonly power: number;

	@IsNotEmpty()
	readonly phone: string;

	@IsNotEmpty()
	readonly password: string;
}
