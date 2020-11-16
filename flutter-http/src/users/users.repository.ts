import { EntityRepository, Repository } from 'typeorm';
import { UserDto } from './dto/users.dto';
import { UserEntity } from './users.entity';

@EntityRepository(UserEntity)
export class UserRepository extends Repository<UserEntity> {
  async createUser(user: UserDto): Promise<UserDto> {
    const { country, firstname, gender, lastname } = user;
    const users = new UserEntity();
    users.firstname = firstname;
    users.lastname = lastname;
    users.country = country;
    users.gender = gender;
    await users.save();
    return users;
  }

  async getAllUsers():Promise<Array<UserDto>>{
      const getAll = await this.find()
      return getAll;
  }
}
