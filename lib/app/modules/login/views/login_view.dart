import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.kh),
          child: Column(
            children: [
              40.kheightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.assetsImagesGamaruLogo,
                    height: 50.kh,
                    width: 50.kh,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 4),
                    child: Text("amaru",
                        style: AppTextStyles.monserrat800(fontSize: 34)),
                  )
                ],
              ),
              30.kheightBox,
              Text(
                "Enter your phone number to receive an OTP to continue.",
                style: AppTextStyles.monserrat500(),
              ),
              20.kheightBox,
              PhoneNumberInput(
                phoneNumberController: controller.phoneNumberController,
              ),
              const Spacer(),
              CustomElevatedButton(
                buttonText: "Next",
                height: 46,
                width: 100.w,
                onPressed: controller.sendOtp,
              ),
              10.kheightBox,
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({super.key, required this.phoneNumberController});
  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: phoneNumberController,
        keyboardType: TextInputType.phone,
        cursorColor: AppColors.java,
        decoration: InputDecoration(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SvgPicture.asset(
                  Assets
                      .assetsIconsIndianFlag, // Indian flag image (Add to your assets)
                  width: 24,
                  height: 24,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '+91',
                style: AppTextStyles.monserrat500(fontSize: 16),
              ),
              const SizedBox(width: 8),
            ],
          ),
          hintText: 'Enter phone number',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.pinkSwan),
            borderRadius: BorderRadius.circular(8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.pinkSwan),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.java),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        style: AppTextStyles.monserrat500());
  }
}
