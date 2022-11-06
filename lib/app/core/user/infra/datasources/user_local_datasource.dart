import '../../domain/entities/user_entity.dart';

abstract class UserLocalDatasource {
  Future<UserEntity> getUser();
}
