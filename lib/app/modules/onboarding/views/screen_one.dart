import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamaru/app/components/common_image_view.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(18.0),
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
                "to Gamaru!",
                style: AppTextStyles.monserrat700(
                    fontSize: 24, color: AppColors.java),
              ),
              100.kheightBox,
              Center(
                child: CommonImageView(
                  height: 250.kh,
                  imagePath: 'assets/images/gamaru_logo.png',
                ),
              ),
              100.kheightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your ultimate platform for joining competitive online game tournaments with real cash prizes",
                  style: AppTextStyles.monserrat400(
                      fontSize: 14, color: AppColors.dune),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
