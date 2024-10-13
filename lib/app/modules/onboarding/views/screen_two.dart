import 'package:flutter/material.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';

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
              Text(
                "How it works!",
                style: AppTextStyles.monserrat700(
                  fontSize: 36,
                ),
              ),
              Spacer(),
              Center(
                child: Text(
                  "Sign up, join a tournament, play your favorite games, and win real money.",
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
