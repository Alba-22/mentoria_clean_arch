import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/app/core/auth/domain/entities/login_entity.dart';
import 'package:mentoria_clean_arch/app/core/errors/failures.dart';

abstract class LoginUsecase {
  Future<Either<Failure, void>> login(LoginEntity credentials);
}
