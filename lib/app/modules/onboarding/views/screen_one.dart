import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
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
                "Welcome to ",
                style: AppTextStyles.monserrat700(
                  fontSize: 36,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  "Gamaru",
                  style: AppTextStyles.monserrat700(
                      fontSize: 40, color: AppColors.java),
                ),
              ),
              const Spacer(),
              Center(
                child: CommonImageView(
                  height: 250.kh,
                  imagePath: Assets.assetsImagesGamaruLogo,
                ),
              ),
              100.kheightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your ultimate platform for joining competitive online games and tournaments with real cash prizes",
                  textAlign: TextAlign.justify,
                  style: AppTextStyles.monserrat400(
                    fontSize: 14,
                    color: AppColors.scorpion,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
