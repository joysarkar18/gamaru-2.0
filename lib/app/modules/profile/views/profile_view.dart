import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/components/profile_option_card.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

import 'package:get/get.dart';
import 'package:random_avatar/random_avatar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        8.kheightBox,
                        SvgPicture.string(
                          RandomAvatarString('8250260794'),
                          height: 120,
                        ),
                        5.kheightBox,
                        Text(
                          'Awasome User',
                          style: AppTextStyles.monserrat600(
                            // color: AppColors.java,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '+91-8250260794',
                          style: AppTextStyles.monserrat400(
                            color: AppColors.pinkSwan,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.kheightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 68.kh,
                        width: 28.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: AppColors.pinkSwan)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.bolt,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Text(
                                    'Match Played',
                                    style: AppTextStyles.monserrat600(
                                      color: AppColors.pinkSwan,
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '69',
                              style: AppTextStyles.monserrat700(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 68.kh,
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: AppColors.pinkSwan)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    size: 18,
                                    Icons.currency_rupee,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    'Tatal Earning',
                                    style: AppTextStyles.monserrat600(
                                      color: AppColors.pinkSwan,
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '6969',
                              style: AppTextStyles.monserrat700(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 68.kh,
                        width: 28.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: AppColors.pinkSwan)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    size: 16,
                                    Icons.diamond,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    ' Match win',
                                    style: AppTextStyles.monserrat600(
                                      color: AppColors.pinkSwan,
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '0',
                              style: AppTextStyles.monserrat700(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Level: ${controller.currentLevel.value}',
                                style: AppTextStyles.monserrat700(
                                  fontSize: 12,
                                  color: AppColors.elSalva,
                                ),
                              ),
                              Text(
                                "Win ₹10",
                                style: AppTextStyles.monserrat500(
                                  fontSize: 12,
                                  color: Colors.yellow,
                                ),
                              )
                            ],
                          ),
                        ),
                        5.kheightBox,
                        Obx(() => LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(10),
                              value: controller.progress,
                              backgroundColor: Colors.grey[300],
                              color: AppColors.java,
                              minHeight: 10,
                            )),
                        5.kheightBox,
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Match played: ${controller.tournamentsParticipated.value}',
                                style: AppTextStyles.monserrat600(
                                  fontSize: 12,
                                  color: AppColors.pinkSwan,
                                ),
                              ),
                              Text(
                                'Out of: ${controller.maxTournamentsForNextLevel.value}',
                                style: AppTextStyles.monserrat600(
                                  fontSize: 12,
                                  color: AppColors.pinkSwan,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ProfileOptionCard(
                      onTap: () {},
                      title: "My Wallet & Transactions",
                      icon: Assets.assetsIconsWallet),
                  ProfileOptionCard(
                      onTap: () {},
                      title: "Leaderboard",
                      icon: Assets.assetsIconsLeaderboard),
                  ProfileOptionCard(
                      onTap: () {},
                      title: "My Referrals",
                      icon: Assets.assetsIconsRefer),
                  ProfileOptionCard(
                      onTap: () {},
                      title: "Settings",
                      icon: Assets.assetsIconsSettings),
                  ProfileOptionCard(
                      onTap: () {},
                      title: "Terms and Conditions",
                      icon: Assets.assetsIconsTermsAndConditions),
                  ProfileOptionCard(
                      onTap: () {},
                      title: "Tutorial",
                      icon: Assets.assetsIconsTutorial),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
