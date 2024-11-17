import 'package:get/get.dart';
import '../views/home_screen.dart';
import '../views/search_screen.dart';

class BottomNavController extends GetxController {

  var currentIndex = 0.obs;

  final screens = [
    HomeScreen(),
    SearchScreen(),
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
