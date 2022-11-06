import '../../domain/entities/user_entity.dart';

abstract class UserRemoteDatasource {
  Future<UserEntity> getUser();
  Future<void> updateUser(/*PAYLOAD*/);
}
