import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/app/core/errors/failures.dart';

import '../entities/user_entity.dart';

abstract class UpdateUserUsecase {
  Future<Either<Failure, void>> call(UserEntity user);
}
