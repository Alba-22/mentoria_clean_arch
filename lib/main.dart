import 'package:flutter/material.dart';
import 'package:mentoria_clean_arch/app/core/di/locator.dart';

import 'app/app_widget.dart';

void main() {
  configureDependencies();
  runApp(const AppWidget());
}
