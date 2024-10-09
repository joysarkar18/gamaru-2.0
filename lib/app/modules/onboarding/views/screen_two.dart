import 'package:flutter/material.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.explore, size: 100, color: Colors.green),
            const SizedBox(height: 20),
            Text(
              "Fuck you",
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
