import { PartialType } from "@nestjs/mapped-types";
import { UserDto } from "./create-users.dto";

export class UpdateUserDto extends PartialType(UserDto){}

// npm i @nestjs/mapped-types
//  Avoid make dupicate code
// PartialType for optional type