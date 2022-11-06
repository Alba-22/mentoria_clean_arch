import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mentoria_clean_arch/app/core/auth/domain/entities/login_entity.dart';
import 'package:mentoria_clean_arch/app/core/auth/infra/models/login_model.dart';
import 'package:mentoria_clean_arch/app/core/auth/infra/models/token_model.dart';

import 'core/auth/infra/datasources/auth_remote_datasource.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final ds = AuthRemoteDatasourceImpl(Dio());

  @override
  Widget build(BuildContext context) {
    ds.login(LoginModel.fromEntity(LoginEntity(username: "alba", password: "zangetsu")).toJson()).then((value) {
      print(value);
    }).onError((error, stackTrace) async {
      print(error);
      print(stackTrace);
    });

    return MaterialApp(
      title: "Mentoria Clean Arch",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
