import 'package:flutter/material.dart';
import 'package:mentoria_clean_arch/app/core/di/locator.dart';

import '../../domain/entities/login_entity.dart';
import 'login_store.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final store = locator.get<LoginStore>();

  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    store.addListener(handleResult);
  }

  void handleResult() {
    store.value.whenOrNull(
      success: () => print("Login Successful"),
      failed: (message) => print("Login Failed: $message"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          children: [
            TextFormField(
              controller: userController,
              decoration: const InputDecoration(labelText: "Usuário"),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Senha"),
            ),
            const SizedBox(height: 16),
            ValueListenableBuilder(
              valueListenable: store,
              builder: (context, state, __) {
                return ElevatedButton(
                  onPressed: () {
                    store.login(
                      LoginEntity(username: userController.text, password: passwordController.text),
                    );
                  },
                  child: state.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () {
                      return const Text(
                        "Entrar",
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
