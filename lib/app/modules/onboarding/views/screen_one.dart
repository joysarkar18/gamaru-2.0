import 'package:flutter/material.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.kheightBox,
            Text(
              "Welcome",
              style: AppTextStyles.monserrat700(
                fontSize: 36,
              ),
            ),
            Text(
              "to Gamaru",
              style: AppTextStyles.monserrat700(
                  fontSize: 24, color: AppColors.java),
            ),
            100.kheightBox,
            Text(
              "lets play games and earn real cash!",
              style: AppTextStyles.monserrat700(
                  fontSize: 16, color: AppColors.pinkSwan),
            ),
          ],
        ),
      ),
    );
  }
}
