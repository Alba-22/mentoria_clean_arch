import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mentoria_clean_arch/app/core/utils/constants.dart';
import 'package:retrofit/retrofit.dart';

import '../models/auth_model.dart';
import '../models/login_model.dart';
import 'login_remote_datasource.dart';

part 'retrofit_login_remote_datasource.g.dart';

@Injectable(as: LoginRemoteDatasource)
@RestApi(baseUrl: baseUrl)
abstract class RetrofitLoginRemoteDatasource implements LoginRemoteDatasource {
  @factoryMethod
  factory RetrofitLoginRemoteDatasource(Dio dio) = _RetrofitLoginRemoteDatasource;

  @override
  @POST("/api/v1/auth/token")
  Future<AuthModel> getTokens(@Body() LoginModel credentials);
}
