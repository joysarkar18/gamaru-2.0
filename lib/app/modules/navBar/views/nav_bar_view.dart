import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/nav_bar_controller.dart';

class NavBarView extends GetView<NavBarController> {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              Assets.assetsImagesGamaruLogo,
              height: 35,
              width: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Obx(
                () => Text(
                  controller.titles[controller.currentIndex.value],
                  style: AppTextStyles.monserrat700(),
                ),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.indigo.withOpacity(0.4),
                  border: Border(
                      bottom: BorderSide(color: AppColors.bottleGreen),
                      right: BorderSide(color: AppColors.bottleGreen)),
                  borderRadius: BorderRadius.circular(16)),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                decoration: BoxDecoration(
                    color: AppColors.indigo.withOpacity(0.4),
                    border: Border.all(color: AppColors.bottleGreen, width: 2),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    SizedBox(
                      child: LottieBuilder.asset(
                        Assets.assetsIconsCoin,
                      ),
                    ),
                    4.kwidthBox,
                    Text(
                      "200",
                      style: AppTextStyles.monserrat700(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Obx(() {
        // Display the appropriate content based on the selected index
        return controller.pages[controller.currentIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        // Wrap the BottomNavigationBar with Obx to make it reactive
        return BottomNavigationBar(
          elevation: 3,
          backgroundColor: AppColors.bar,
          currentIndex: controller.currentIndex.value,
          selectedItemColor:
              AppColors.java, // Change this to your desired active color
          unselectedItemColor:
              Colors.white54, // Change this to your desired inactive color
          onTap: controller.changeIndex,
          selectedLabelStyle: AppTextStyles.monserrat600(height: 1.3),
          unselectedLabelStyle: AppTextStyles.monserrat500(height: 1.3),
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
