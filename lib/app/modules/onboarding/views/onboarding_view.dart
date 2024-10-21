import 'package:flutter/material.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';
import 'screen_one.dart';
import 'screen_two.dart';
import 'screen_three.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                children: const [
                  ScreenOne(),
                  ScreenTwo(),
                  ScreenThree(),
                ],
              ),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: controller.currentIndex.value == index
                            ? AppColors.java
                            : AppColors.scorpion,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                )),
            Obx(() => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: controller.previousPage,
                        child: const Text("Previous"),
                      ),
                      TextButton(
                        onPressed: controller.nextPage,
                        child: Text(controller.currentIndex.value == 2
                            ? "Get Started"
                            : "Next"),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
