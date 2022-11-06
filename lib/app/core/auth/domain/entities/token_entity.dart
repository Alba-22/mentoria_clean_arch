import 'package:equatable/equatable.dart';

class TokenEntity extends Equatable {
  final String access;
  final String refresh;
  final DateTime expirationDate;

  const TokenEntity({
    required this.access,
    required this.refresh,
    required this.expirationDate,
  });

  @override
  List<Object> get props => [access, refresh, expirationDate];

  @override
  bool get stringify => true;
}
