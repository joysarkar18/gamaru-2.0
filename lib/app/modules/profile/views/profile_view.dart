import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bar,
      body: SafeArea(
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
                      16.kheightBox,
                      CircleAvatar(
                        radius: 40.kh,
                      ),
                      5.kheightBox,
                      Text(
                        'Tanmoy Sarkar',
                        style: AppTextStyles.monserrat600(
                          // color: AppColors.java,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '8250260794',
                        style: AppTextStyles.monserrat400(
                          color: AppColors.pinkSwan,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                20.kheightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80.kh,
                      // width: 130.kw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: AppColors.pinkSwan)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      height: 80.kh,
                      // width: 130.kw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: AppColors.pinkSwan)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  size: 18,
                                  Icons.currency_rupee,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  'Wallet Balance',
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
                      height: 80.kh,
                      // width: 130.kw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: AppColors.pinkSwan)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  size: 18,
                                  Icons.diamond,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  'Match win',
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          'Level: ${controller.currentLevel.value}',
                          style: AppTextStyles.monserrat700(
                            fontSize: 12,
                            color: AppColors.elSalva,
                          ),
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
                      ElevatedButton(
                        onPressed: () => controller.participateInTournament(),
                        child: Text("Participate in Tournament"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment methods',
                        style: AppTextStyles.monserrat700(fontSize: 18),
                      ),
                      5.kheightBox,
                      Container(
                        height: 130.kh,
                        width: 100.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColors.pinkSwan,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CommonImageView(
                                      svgPath: Assets.assetsMoneyDeposit,
                                      svgColor: AppColors.genoa,
                                      height: 40,
                                    ),
                                    8.kheightBox,
                                    Text(
                                      'Recharge',
                                      style: AppTextStyles.monserrat500(),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CommonImageView(
                                      svgPath: Assets.assetsMoneyWithdraw,
                                      svgColor: AppColors.elSalva,
                                      height: 40,
                                    ),
                                    8.kheightBox,
                                    Text(
                                      'Withdraw',
                                      style: AppTextStyles.monserrat500(),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CommonImageView(
                                      svgPath: Assets.assetsMoneyTransactions,
                                      svgColor: Colors.white,
                                      height: 40,
                                    ),
                                    8.kheightBox,
                                    Text(
                                      'Transactions',
                                      style: AppTextStyles.monserrat500(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
