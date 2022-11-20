import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import 'package:mentoria_clean_arch/app/core/errors/failures/failures.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/entities/auth_entity.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/entities/login_entity.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/repositories/login_repository.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/usecases/login_usecase.dart';

class _MockLoginRepository extends Mock implements LoginRepository {}

void main() {
  final repository = _MockLoginRepository();
  late LoginUsecase usecase;

  setUp(() {
    usecase = LoginUsecaseImpl(repository);
    registerFallbackValue(_credentials);
    registerFallbackValue(_tokens);
  });

  test(
    "Deve obter os tokens e salvá-los no dispositivo do usuário",
    () async {
      // Arrange
      when(() => repository.getTokens(any())).thenAnswer(
        (_) async => const Right(_tokens),
      );
      when(() => repository.saveToken(any())).thenAnswer(
        (_) async => const Right({}),
      );

      // Act
      final result = await usecase(_credentials);

      // Assert
      expect(result, const Right({}));
      verify(() => repository.getTokens(_credentials)).called(1);
      verify(() => repository.saveToken(_tokens)).called(1);
    },
  );

  test(
    "Deve retornar Failure se não conseguir obter os tokens",
    () async {
      // Arrange
      when(() => repository.getTokens(any())).thenAnswer(
        (_) async => const Left(ServerFailure()),
      );

      // Act
      final result = await usecase(_credentials);

      // Assert
      expect(result, const Left(ServerFailure()));
      verify(() => repository.getTokens(_credentials)).called(1);
    },
  );

  test(
    "Deve retornar Failure se não conseguir salvar os tokens",
    () async {
      // Arrange
      when(() => repository.getTokens(any())).thenAnswer(
        (_) async => const Right(_tokens),
      );
      when(() => repository.saveToken(any())).thenAnswer(
        (_) async => const Left(WriteCacheFailure()),
      );

      // Act
      final result = await usecase(_credentials);

      // Assert
      expect(result, const Left(WriteCacheFailure()));
      verify(() => repository.getTokens(_credentials)).called(1);
      verify(() => repository.saveToken(_tokens)).called(1);
    },
  );
}

const _tokens = AuthEntity(accessToken: "123", refreshToken: "456");

const _credentials = LoginEntity(username: "hayley@paramore.com", password: "12345678");
