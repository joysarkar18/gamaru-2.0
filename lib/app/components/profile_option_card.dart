import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';
import '../constants/app_colors.dart';

class ProfileOptionCard extends StatelessWidget {
  const ProfileOptionCard(
      {super.key,
      required this.onTap,
      required this.title,
      required this.icon});

  final String title;
  final Function onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CommonImageView(
              svgPath: icon,
              svgColor: AppColors.java,
              height: 28,
            ),
            10.kwidthBox,
            Text(
              title,
              style: AppTextStyles.monserrat600(
                color: AppColors.pinkSwan,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.pinkSwan,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
