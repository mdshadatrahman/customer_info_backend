import { Injectable, NestMiddleware } from "@nestjs/common";
import { NextFunction, Response } from "express";
import { ExpressRequest } from "src/types/expressRequest.interface";
import { verify } from 'jsonwebtoken'
import { UserService } from "../user.service";
import { JWT_TOKEN } from "src/config";

@Injectable()
export class AuthMiddleware implements NestMiddleware {
	constructor(
		private readonly userService: UserService
	) { }

	async use(req: ExpressRequest, _: Response, next: NextFunction) {
		if (!req.headers.authorization) {
			req.user = null;
			next();
			return;
		}

		const token = req.headers.authorization.split(' ')[1];

		try {
			const decode = verify(token, JWT_TOKEN);
			const user = await this.userService.findOneById(decode.id);

			req.user = user;
			next();
		} catch (error) {
			req.user = null;
			next();
		}
	}

}