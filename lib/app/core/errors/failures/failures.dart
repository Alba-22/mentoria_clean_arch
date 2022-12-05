import 'package:equatable/equatable.dart';
import 'package:mentoria_clean_arch/app/core/utils/app_text.dart';

abstract class Failure extends Equatable {
  final String? _message;

  const Failure([this._message]);

  String get message => _message ?? AppText.genericFailure;

  @override
  List<Object?> get props => [_message];
}

class ServerFailure extends Failure {
  const ServerFailure([String? message]) : super(message);
}

class WriteCacheFailure extends Failure {
  const WriteCacheFailure([String? message]) : super(message);
}
