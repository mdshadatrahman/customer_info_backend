import {
    IsString,
    MaxLength,
    MinLength,
    IsNotEmpty,
    IsBoolean,
  } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';

export class CreateDivisionDto implements Readonly<CreateDivisionDto> {


    @ApiProperty()
    @IsNotEmpty()
    name: string;

    @ApiProperty()
    @IsNotEmpty()
    bnname: string;

    @ApiProperty()
    @IsNotEmpty()
    lat: number;

    @ApiProperty()
    @IsNotEmpty()
    long: number;
}
