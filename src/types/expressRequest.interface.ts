import { Request } from "express";
import { UserEntity } from "src/user/entity/user.entity";

export interface ExpressRequest extends Request {
	user?: UserEntity;
}