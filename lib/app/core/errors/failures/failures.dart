// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;

  const Failure({this.message = "Ocorreu um erro. Tente novamente mais tarde!"});

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({String? message}) : super(message: message);
}

class WriteCacheFailure extends Failure {
  const WriteCacheFailure({String? message}) : super(message: message);
}
