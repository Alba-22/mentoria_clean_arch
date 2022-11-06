import 'package:flutter/material.dart';
import 'package:mentoria_clean_arch/app/core/di/di.dart';

import 'app/app_widget.dart';

void main() {
  configureDependencies();
  runApp(AppWidget());
}

const String baseUrl = "http://ec2-54-226-60-142.compute-1.amazonaws.com:8080";
