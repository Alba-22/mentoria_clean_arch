import 'package:dartz/dartz.dart';

import 'package:mentoria_clean_arch/app/core/errors/failures.dart';

import '../entities/token_entity.dart';

abstract class GetTokenUsecase {
  Future<Either<Failure, TokenEntity>> getUserToken();
}
