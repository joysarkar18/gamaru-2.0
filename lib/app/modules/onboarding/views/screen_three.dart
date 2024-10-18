import 'package:flutter/material.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';

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
              const SizedBox(height: 20),
              Text(
                "Secure, Fun and",
                style: AppTextStyles.monserrat700(
                  fontSize: 36,
                ),
              ),
              Text(
                "Fair",
                style: AppTextStyles.monserrat700(
                  fontSize: 36,
                ),
              ),
              Spacer(),
              Center(
                child: Text(
                  "Your gaming experience is our priority. We ensure secure payments, fair play, and a fun community",
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
