import 'package:fpdart/fpdart.dart';

import 'package:mentoria_clean_arch/app/core/errors/failures/failures.dart';
import 'package:mentoria_clean_arch/app/core/services/local_storage/local_storage.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_remote_datasource.dart';
import '../models/login_model.dart';

// TODO: Deixar catch mais especifico
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _remoteDatasource;
  final LocalStorage _localStorage;

  LoginRepositoryImpl(this._remoteDatasource, this._localStorage);

  @override
  Future<Either<Failure, AuthEntity>> getTokens(LoginEntity credentials) async {
    try {
      final result = await _remoteDatasource.getTokens(
        LoginModel.fromEntity(credentials),
      );

      return Right(result.toEntity());
    } catch (exception) {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> saveToken(AuthEntity token) async {
    try {
      await _localStorage.write("access_token", token.accessToken);
      await _localStorage.write("refresh_token", token.refreshToken);

      return const Right({});
    } catch (exception) {
      return const Left(WriteCacheFailure());
    }
  }
}
