import { TypeOrmModuleOptions } from "@nestjs/typeorm";

export const typeormConfig:TypeOrmModuleOptions={
    type:"postgres",
    port:5432,
    host:'localhost',
    username:'postgres',
    password:'Love@2018',
    database:'flutter_http',
    synchronize:true,
    entities: [__dirname + '/../**/*.entity{.ts,.js}'],
}