import 'package:flutter/material.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final Widget? leadingIcon;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final double? borderRadious;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.height,
    required this.width,
    required this.onPressed,
    this.leadingIcon,
    this.textStyle,
    this.buttonColor,
    this.borderRadious,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.java,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadious != null
                ? BorderRadius.circular(borderRadious!)
                : BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) leadingIcon!,
            6.kwidthBox,
            if (buttonText.isNotEmpty && textStyle == null)
              Text(
                buttonText,
                style: AppTextStyles.monserrat700(fontSize: 16),
              ),
            if (buttonText.isNotEmpty && textStyle != null)
              Text(buttonText, style: textStyle),
          ],
        ),
      ),
    );
  }
}
