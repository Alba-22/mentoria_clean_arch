import 'package:fpdart/fpdart.dart';

import 'package:mentoria_clean_arch/app/core/errors/failures/failures.dart';

import '../entities/login_entity.dart';
import '../repositories/login_repository.dart';

abstract class LoginUsecase {
  Future<Either<Failure, void>> call(LoginEntity credentials);
}

class LoginUsecaseImpl implements LoginUsecase {
  final LoginRepository _repository;

  LoginUsecaseImpl(this._repository);

  @override
  Future<Either<Failure, void>> call(LoginEntity credentials) async {
    final tokens = await _repository.getTokens(credentials);
    return tokens.fold(
      left,
      (data) async {
        return await _repository.saveToken(data);
      },
    );
  }
}
