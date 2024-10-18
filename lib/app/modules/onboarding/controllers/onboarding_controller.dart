import 'package:flutter/material.dart';
import 'package:gamaru/app/modules/login/views/login_view.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  // Page controller to control page transitions
  PageController pageController = PageController();

  // Observable current page index
  var currentIndex = 0.obs;

  // On page change callback
  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  // Navigate to next screen
  void nextPage() {
    if (currentIndex.value < 2) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Navigate to Login Page on the last onboarding page
      Get.off(() => LoginView());
    }
  }

  // Navigate to previous screen
  void previousPage() {
    if (currentIndex.value > 0) {
      pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  // Dispose controller when not in use
  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
