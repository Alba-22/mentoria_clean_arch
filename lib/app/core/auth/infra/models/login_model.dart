import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentoria_clean_arch/app/core/auth/domain/entities/login_entity.dart';

part 'login_model.g.dart';
part 'login_model.freezed.dart';

@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();

  const factory LoginModel({
    required String username,
    required String password,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, Object?> json) => _$LoginModelFromJson(json);

  factory LoginModel.fromEntity(LoginEntity entity) {
    return LoginModel(
      username: entity.username,
      password: entity.password,
    );
  }
}
