import 'package:fpdart/fpdart.dart';
import 'package:mentoria_clean_arch/app/core/errors/failures/failures.dart';

import '../entities/auth_entity.dart';
import '../entities/login_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, AuthEntity>> getTokens(LoginEntity credentials);
  Future<Either<Failure, void>> saveToken(AuthEntity token);
}
