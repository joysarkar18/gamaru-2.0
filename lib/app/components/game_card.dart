import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18),
      height: 130.kh,
      width: 100.kw,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.kw),
            child: CommonImageView(
              height: 100.kh,
              width: 100.kw,
              url:
                  "https://upload.wikimedia.org/wikipedia/en/thumb/6/63/Battleground_Mobile_India.webp/240px-Battleground_Mobile_India.webp.png",
            ),
          ),
          5.kheightBox,
          Text(
            "Free Fire",
            style: AppTextStyles.monserrat800(fontSize: 16),
          )
        ],
      ),
    );
  }
}
