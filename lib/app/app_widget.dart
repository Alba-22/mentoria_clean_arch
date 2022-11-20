import 'package:flutter/material.dart';

import 'modules/login/presentation/pages/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mentoria Clean Arch",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(),
    );
  }
}
