import 'package:dio/dio.dart';
import 'package:mentoria_clean_arch/app/core/auth/domain/entities/login_entity.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mentoria_clean_arch/main.dart';

import '../models/token_model.dart';

part 'auth_remote_datasource.g.dart';

abstract class AuthRemoteDatasource {
  Future<TokenModel> login(LoginEntity credentials);
  Future<TokenModel> refreshToken(TokenModel previousToken);
}

@RestApi(baseUrl: baseUrl)
abstract class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  factory AuthRemoteDatasourceImpl(Dio dio) = _AuthRemoteDatasourceImpl;

  @override
  @POST("/api/v1/auth/token")
  Future<TokenModel> login(@Body() LoginEntity credentials);

  @override
  @POST("/api/v1/auth/refresh")
  Future<TokenModel> refreshToken(TokenModel previousToken);
}
