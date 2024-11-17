import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/views/splash_screen.dart';
import 'bindings/initial_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
