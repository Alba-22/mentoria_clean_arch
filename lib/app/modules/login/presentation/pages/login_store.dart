import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/login_entity.dart';
import '../../domain/usecases/login_usecase.dart';

part 'login_store.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial() = _LoginInitialState;
  factory LoginState.loading() = _LoginLoadingState;
  factory LoginState.success() = _LoginSuccessState;
  factory LoginState.failed(String message) = _LoginFailedState;
}

class LoginStore extends ValueNotifier<LoginState> {
  final LoginUsecase _usecase;

  LoginStore(this._usecase) : super(LoginState.initial());

  Future<void> login(LoginEntity credentials) async {
    value = LoginState.loading();
    final result = await _usecase(credentials);
    result.fold(
      (failure) => value = LoginState.failed(failure.message),
      (_) => value = LoginState.success(),
    );
  }
}
