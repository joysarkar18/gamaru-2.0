import 'package:get/get.dart';

class NavBarController extends GetxController {
  // Define the current index for the BottomNavigationBar
  var currentIndex = 0.obs;

  // Define a list of page titles to display
  final pages = [
    'Home Page',
    'My Games Page',
    'Profile Page',
  ];

  // Function to change the index of the BottomNavigationBar
  void changeIndex(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
