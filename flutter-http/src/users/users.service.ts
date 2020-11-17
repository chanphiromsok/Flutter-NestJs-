import { Injectable } from '@nestjs/common';
import { UserDto } from './dto/create-users.dto';
import { UserRepository } from './users.repository';

@Injectable()
export class UsersService {
  constructor(private userRepository: UserRepository) {}
  createUser(user: UserDto): Promise<UserDto> {
    return this.userRepository.createUser(user);
  }

  getAllUsers():Promise<Array<UserDto>>{
      return this.userRepository.getAllUsers()
  }
}
