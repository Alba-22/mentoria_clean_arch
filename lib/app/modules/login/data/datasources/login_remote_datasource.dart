import '../models/auth_model.dart';
import '../models/login_model.dart';

abstract class LoginRemoteDatasource {
  Future<AuthModel> getTokens(LoginModel credentials);
}
