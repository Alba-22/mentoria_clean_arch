import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_entity.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const AuthModel._();

  factory AuthModel({
    required String access,
    required String refresh,
    required DateTime expireIn,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

  AuthEntity toEntity() {
    return AuthEntity(
      accessToken: access,
      refreshToken: refresh,
    );
  }
}
