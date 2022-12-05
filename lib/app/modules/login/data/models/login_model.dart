import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/login_entity.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();

  factory LoginModel({
    required String username,
    required String password,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  factory LoginModel.fromEntity(LoginEntity entity) {
    return LoginModel(username: entity.username, password: entity.password);
  }
}
