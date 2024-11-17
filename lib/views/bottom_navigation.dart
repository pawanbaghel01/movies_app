import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/controllers/bottom_navigation.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the BottomNavController
    final BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
      body: Obx(
        () => controller.screens[controller.currentIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTabIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}
