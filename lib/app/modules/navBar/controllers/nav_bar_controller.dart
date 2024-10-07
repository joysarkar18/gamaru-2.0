import 'package:gamaru/app/modules/home/views/home_view.dart';
import 'package:gamaru/app/modules/myGames/views/my_games_view.dart';
import 'package:gamaru/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  // Define the current index for the BottomNavigationBar
  var currentIndex = 0.obs;

  // Define a list of page titles to display
  final pages = [
    HomeView(),
    MyGamesView(),
    ProfileView(),
  ];
  final titles = ["All Events", "My Games", "Profile"];

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
