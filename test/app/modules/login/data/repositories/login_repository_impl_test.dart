import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import 'package:mentoria_clean_arch/app/core/errors/failures/failures.dart';
import 'package:mentoria_clean_arch/app/core/services/local_storage/local_storage.dart';
import 'package:mentoria_clean_arch/app/modules/login/data/datasources/login_remote_datasource.dart';
import 'package:mentoria_clean_arch/app/modules/login/data/models/auth_model.dart';
import 'package:mentoria_clean_arch/app/modules/login/data/models/login_model.dart';
import 'package:mentoria_clean_arch/app/modules/login/data/repositories/login_repository_impl.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/entities/auth_entity.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/entities/login_entity.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/repositories/login_repository.dart';

class _MockLoginRemoteDatasource extends Mock implements LoginRemoteDatasource {}

class _MockLocalStorage extends Mock implements LocalStorage {}

void main() {
  final remoteDatasource = _MockLoginRemoteDatasource();
  final localStorage = _MockLocalStorage();
  late LoginRepository repository;

  setUp(() {
    repository = LoginRepositoryImpl(remoteDatasource, localStorage);
    registerFallbackValue(_loginModel);
  });

  group("Testes para getTokens():", () {
    test(
      "Deve retornar tokens se conseguir fazer a requisição",
      () async {
        // Arrange
        when(() => remoteDatasource.getTokens(any())).thenAnswer((_) async => _authModel);

        // Act
        final result = await repository.getTokens(_loginEntity);

        // Assert
        expect(result, const Right(_authEntity));
        verify(() => remoteDatasource.getTokens(_loginModel)).called(1);
      },
    );

    test(
      "Deve retornar ServerFailure se não conseguir obter os dados",
      () async {
        // Arrange
        when(() => remoteDatasource.getTokens(any())).thenThrow(Exception());

        // Act
        final result = await repository.getTokens(_loginEntity);

        // Assert
        expect(result, const Left(ServerFailure()));
        verify(() => remoteDatasource.getTokens(_loginModel)).called(1);
      },
    );
  });

  group("Testes para saveToken():", () {
    test(
      "Deve salvar os dados no LocalStorage",
      () async {
        // Arrange
        when(() => localStorage.write(any(), any())).thenAnswer((_) async => {});

        // Act
        final result = await repository.saveToken(_authEntity);

        // Assert
        expect(result, isA<Right>());
        verify(() => localStorage.write("access_token", "123")).called(1);
        verify(() => localStorage.write("refresh_token", "456")).called(1);
      },
    );

    test(
      "Deve retornar WriteCacheFailure se não conseguir salvar os dados no LocalStorage",
      () async {
        // Arrange
        when(() => localStorage.write(any(), any())).thenThrow(PlatformException(code: ""));

        // Act
        final result = await repository.saveToken(_authEntity);

        // Assert
        expect(result, const Left(WriteCacheFailure()));
        verify(() => localStorage.write("access_token", "123")).called(1);
      },
    );
  });
}

const _authEntity = AuthEntity(accessToken: "123", refreshToken: "456");

final _authModel = AuthModel(access: "123", refresh: "456", expireIn: DateTime.now());

const _loginEntity = LoginEntity(username: "hayley@paramore.com", password: "12345678");

final _loginModel = LoginModel(username: "hayley@paramore.com", password: "12345678");
