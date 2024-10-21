import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

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
              // const Icon(Icons.check_circle, size: 100, color: Colors.red),
              const SizedBox(height: 30),
              Text(
                " Secure, Fun and",
                style: AppTextStyles.monserrat700(
                  fontSize: 36,
                ),
              ),
              Text(
                " Fair",
                style: AppTextStyles.monserrat700(
                  fontSize: 36,
                ),
              ),
              const Spacer(),
              Center(
                child: CommonImageView(
                  height: 310.kh,
                  imagePath: Assets.assetsImagesSecureWallet,
                ),
              ),
              100.kheightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your gaming experience is our priority. We ensure secure payments, fair play, and a fun community.",
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
