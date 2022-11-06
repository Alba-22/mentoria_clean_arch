import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/app/core/errors/failures.dart';

import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser();
  Future<Either<Failure, void>> updateUser(UserEntity user);
}
