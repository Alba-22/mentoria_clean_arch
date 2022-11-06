import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/token_entity.dart';

part 'token_model.g.dart';
part 'token_model.freezed.dart';

@freezed
class TokenModel with _$TokenModel {
  const TokenModel._();

  const factory TokenModel({
    required String access,
    required String refresh,
    required DateTime? expirationDate,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, Object?> json) => _$TokenModelFromJson(json);

  TokenEntity toDomain() {
    return TokenEntity(
      access: access,
      refresh: refresh,
      expirationDate: expirationDate ?? DateTime.now().add(const Duration(minutes: 1)),
    );
  }
}
