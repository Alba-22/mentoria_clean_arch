import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mentoria_clean_arch/app/core/errors/failures/failures.dart';
import 'package:mentoria_clean_arch/app/core/utils/app_text.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/entities/login_entity.dart';
import 'package:mentoria_clean_arch/app/modules/login/domain/usecases/login_usecase.dart';
import 'package:mentoria_clean_arch/app/modules/login/presentation/pages/login_store.dart';

import 'package:mocktail/mocktail.dart';
import 'package:value_listenable_test/value_listenable_test.dart';

class _MockLoginUsecase extends Mock implements LoginUsecase {}

void main() {
  final usecase = _MockLoginUsecase();
  late LoginStore store;

  setUp(() {
    store = LoginStore(usecase);
    registerFallbackValue(_credentials);
  });

  test(
    "Deve setar state para success quando conseguir logar",
    () async {
      // Later Assert
      expect(
        store,
        emitValues([LoginState.loading(), LoginState.success()]),
      );

      // Arrange
      when(() => usecase.call(any())).thenAnswer((_) async => const Right({}));

      // Act
      await store.login(_credentials);

      // Assert
      verify(() => usecase.call(_credentials)).called(1);
    },
  );

  test(
    "Deve setar state para failed quando NÃO conseguir logar",
    () async {
      // Later Assert
      expect(
        store,
        emitValues([LoginState.loading(), LoginState.failed(AppText.genericFailure)]),
      );

      // Arrange
      when(() => usecase.call(any())).thenAnswer((_) async => const Left(ServerFailure()));

      // Act
      await store.login(_credentials);

      // Assert
      verify(() => usecase.call(_credentials)).called(1);
    },
  );
}

const _credentials = LoginEntity(username: "hayley@paramore.com", password: "12345678");
