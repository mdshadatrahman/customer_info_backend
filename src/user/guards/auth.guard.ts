import { CanActivate, ExecutionContext, HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { ExpressRequest } from "src/types/expressRequest.interface";

@Injectable()
export class AuthGuard implements CanActivate {
	canActivate(context: ExecutionContext): boolean {
		const request = context.switchToHttp().getRequest<ExpressRequest>();
		console.log(request.user);
		if (request.user) {
			return true;
		}

		throw new HttpException('Not Authorized', HttpStatus.UNAUTHORIZED);
	}

}