import { Body, Controller, Get, Post } from '@nestjs/common';
import { UserDto } from './dto/users.dto';
import { UsersService } from './users.service';

@Controller()
export class UsersController {
    constructor(private userService:UsersService){}
    @Post('/users')
    createUser(@Body() user:UserDto):Promise<UserDto>{
        return this.userService.createUser(user)
    }
    @Get('/users')
    getUsers():Promise<Array<UserDto>>{
        return this.userService.getAllUsers();
    }
}
