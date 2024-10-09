import 'package:flutter/material.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 100, color: Colors.red),
            const SizedBox(height: 20),
            Text(
              "Sorry",
              style: AppTextStyles.monserrat700(),
            ),
            Text(
              "lets dive into the gamig world!",
              style: AppTextStyles.monserrat700(),
            ),
          ],
        ),
      ),
    );
  }
}
