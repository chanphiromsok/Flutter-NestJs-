import { UsersModule } from './users/users.module';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { typeormConfig } from './config/typeorm.config';

@Module({
  imports: [UsersModule, TypeOrmModule.forRoot(typeormConfig),UsersModule],
})
export class AppModule {}
