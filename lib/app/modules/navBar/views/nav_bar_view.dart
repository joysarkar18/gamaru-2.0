import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:get/get.dart';
import '../controllers/nav_bar_controller.dart';

class NavBarView extends GetView<NavBarController> {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavBarView'),
        centerTitle: true,
      ),
      body: Obx(() {
        // Display the appropriate content based on the selected index
        return Center(
          child: Text(
            controller.pages[controller.currentIndex.value],
            style: const TextStyle(fontSize: 20),
          ),
        );
      }),
      bottomNavigationBar: Obx(() {
        // Wrap the BottomNavigationBar with Obx to make it reactive
        return BottomNavigationBar(
          backgroundColor: AppColors.bar,
          currentIndex: controller.currentIndex.value,
          selectedItemColor:
              AppColors.java, // Change this to your desired active color
          unselectedItemColor:
              Colors.white54, // Change this to your desired inactive color
          onTap: controller.changeIndex,
          selectedLabelStyle: AppTextStyles.monserrat600(height: 2),
          unselectedLabelStyle: AppTextStyles.monserrat500(height: 2),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.assetsIconsHome,
                height: 28,
                width: 20,
                colorFilter: ColorFilter.mode(
                  controller.currentIndex.value == 0
                      ? AppColors.java
                      : Colors.white54,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.assetsIconsGame,
                height: 28,
                width: 20,
                colorFilter: ColorFilter.mode(
                  controller.currentIndex.value == 1
                      ? AppColors.java
                      : Colors.white54,
                  BlendMode.srcIn,
                ),
              ),
              label: 'My Games',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.assetsIconsProfile,
                height: 28,
                width: 20,
                colorFilter: ColorFilter.mode(
                  controller.currentIndex.value == 2
                      ? AppColors.java
                      : Colors.white54,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Profile',
            ),
          ],
        );
      }),
    );
  }
}
