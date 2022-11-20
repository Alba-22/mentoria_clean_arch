// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
      expireIn: DateTime.parse(json['expireIn'] as String),
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'expireIn': instance.expireIn.toIso8601String(),
    };
