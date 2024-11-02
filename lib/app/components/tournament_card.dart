import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

class TournamentCard extends StatelessWidget {
  const TournamentCard({super.key, required this.isHome});
  final bool isHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isHome ? 215 : 240,
      margin: EdgeInsets.only(left: isHome ? 18 : 0),
      padding: const EdgeInsets.all(8),
      width: isHome ? 270.kw : 100.w,
      decoration: BoxDecoration(
          color: AppColors.dune, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CommonImageView(
              url:
                  "https://staticg.sportskeeda.com/editor/2024/09/ddf63-17260436951136-1920.jpg",
              height: isHome ? 150 : 180,
              width: 100.w,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.bottleGreen, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: CustomElevatedButton(
                      buttonText: "Details",
                      height: 30,
                      textStyle: AppTextStyles.monserrat600(),
                      width: isHome ? 31.w : 41.w,
                      onPressed: () {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.bottleGreen, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: CustomElevatedButton(
                      buttonText: "Join Now",
                      height: 30,
                      textStyle: AppTextStyles.monserrat600(),
                      width: isHome ? 31.w : 41.w,
                      onPressed: () {}),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
