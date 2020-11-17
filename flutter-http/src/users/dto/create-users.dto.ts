import { IsString } from 'class-validator';

export class UserDto {
  @IsString()
  firstname: string;

  @IsString()
  lastname: string;
  @IsString()
  gender: string;
  @IsString()
  country: string;
}
