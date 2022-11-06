import 'package:dartz/dartz.dart';

import 'package:mentoria_clean_arch/app/core/errors/failures.dart';

import '../entities/login_entity.dart';
import '../entities/token_entity.dart';

abstract class AuthRepository {
  // Deverá obter o token armazenado no dispositivo do usuário, ou tentar atualizar o token por meio do refreshToken
  Future<Either<Failure, TokenEntity>> getUserToken();

  // Usará as credenciais do usuário para logar e guardará o token localmente
  Future<Either<Failure, void>> login(LoginEntity credentials);
}
