import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/app/core/errors/failures.dart';

import '../entities/user_entity.dart';

abstract class GetUserUsecase {
  Future<Either<Failure, UserEntity>> call();
}
