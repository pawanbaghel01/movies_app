import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/views/bottom_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const MyBottomNavigation());
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash_image.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
