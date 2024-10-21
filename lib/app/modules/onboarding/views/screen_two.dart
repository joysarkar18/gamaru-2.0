import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

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
              const SizedBox(height: 20),
              20.kheightBox,
              Text(
                " How it works?",
                style: AppTextStyles.monserrat700(
                  fontSize: 36,
                ),
              ),
              const Spacer(),
              Center(
                child: CommonImageView(
                  height: 290.kh,
                  imagePath: Assets.assetsImagesPlayingGame,
                ),
              ),
              100.kheightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sign up, join a tournament, play your favorite games, and win real money.",
                  textAlign: TextAlign.justify,
                  style: AppTextStyles.monserrat400(
                      fontSize: 14, color: AppColors.scorpion),
                ),
              ),
              20.kheightBox,
            ],
          ),
        ),
      ),
    );
  }
}
