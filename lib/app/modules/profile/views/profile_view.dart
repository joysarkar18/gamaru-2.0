import 'package:flutter/material.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bar,
      // appBar: AppBar(
      //   title: Text(
      //     'ProfileView',
      //     style: AppTextStyles.monserrat700(color: AppColors.indigo),
      //   ),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40.kh,
                        ),
                        5.kheightBox,
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: AppColors.oxfordBlue.withOpacity(.25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: AppColors.elSalva,
                                ),
                                Text(
                                  '10,000',
                                  style: AppTextStyles.monserrat500(
                                    color: Colors.greenAccent,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Tanmoy Sarkar',
                              style: AppTextStyles.monserrat600(
                                color: AppColors.java,
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
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            size: 25.kh,
                            color: AppColors.pinkSwan,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: Divider(),
              // ),
              50.kheightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: AppColors.bottleGreen,
                  onTap: () {
                    print('tapped');
                  },
                  child: SizedBox(
                    height: 40.kh,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.account_balance,
                          color: AppColors.pinkSwan,
                          size: 30.kh,
                        ),
                        20.kwidthBox,
                        Text(
                          'Bank Details',
                          style: AppTextStyles.monserrat400(
                              color: AppColors.pinkSwan, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: AppColors.bottleGreen,
                  onTap: () {
                    print('tapped');
                  },
                  child: SizedBox(
                    height: 40.kh,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: AppColors.pinkSwan,
                          size: 30.kh,
                        ),
                        20.kwidthBox,
                        Text(
                          'Withdraw',
                          style: AppTextStyles.monserrat400(
                              color: AppColors.pinkSwan, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: AppColors.bottleGreen,
                  onTap: () {
                    print('tapped');
                  },
                  child: SizedBox(
                    height: 40.kh,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.usb,
                          color: AppColors.pinkSwan,
                          size: 30.kh,
                        ),
                        20.kwidthBox,
                        Text(
                          'About us',
                          style: AppTextStyles.monserrat400(
                              color: AppColors.pinkSwan, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: AppColors.elSalva,
                  onTap: () {
                    print('tapped');
                  },
                  child: SizedBox(
                    height: 40.kh,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.logout,
                          color: AppColors.pinkSwan,
                          size: 30.kh,
                        ),
                        20.kwidthBox,
                        Text(
                          'Log out',
                          style: AppTextStyles.monserrat400(
                              color: AppColors.pinkSwan, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Terms & Conditions',
                    style: AppTextStyles.monserrat400(color: AppColors.indigo),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
