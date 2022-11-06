import '../../domain/entities/token_entity.dart';

abstract class AuthLocalDatasource {
  Future<TokenEntity?> getToken();
  Future<void> saveToken(TokenEntity token);
}
