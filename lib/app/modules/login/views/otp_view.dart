import 'package:flutter/material.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/modules/login/controllers/login_controller.dart';
import 'package:gamaru/app/services/dialog_service.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpView extends GetView<LoginController> {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    String otpCode = ''; // To store the entered OTP

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.kh),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "Please enter 6 digit code sent to",
                  style: AppTextStyles.monserrat500(),
                ),
              ),
              Row(
                children: [
                  6.kwidthBox,
                  Text(
                    "+91-${Get.arguments["phoneNo"]}", // This phone number should be dynamic
                    style: AppTextStyles.monserrat600(
                        color: AppColors.java, fontSize: 15),
                  ),
                  Text(
                    " in WhatsApp or SMS.",
                    style: AppTextStyles.monserrat500(),
                  ),
                ],
              ),
              20.kheightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pinput(
                    length: 6,
                    defaultPinTheme: PinTheme(
                      width: 50.kw,
                      height: 56,
                      textStyle: TextStyle(
                          fontSize: 18,
                          color: AppColors.java,
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 50.kw,
                      height: 56,
                      textStyle: TextStyle(
                          fontSize: 18,
                          color: AppColors.java,
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.java,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) {
                      otpCode = pin; // Capture the entered OTP
                    },
                  ),
                ],
              ),
              const Spacer(),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive any code?",
                      style: AppTextStyles.monserrat500(),
                    ),
                    6.kwidthBox,
                    if (controller.countdown.value == 0)
                      InkWell(
                        onTap: controller.resendOtp,
                        child: Text(
                          "Resend Code",
                          style: AppTextStyles.monserrat600(
                              color: AppColors.java, fontSize: 15),
                        ),
                      ),
                    if (controller.countdown.value > 0)
                      Text(
                        "${controller.countdown.value} Sec.",
                        style: AppTextStyles.monserrat600(
                            color: AppColors.java, fontSize: 15),
                      ),
                  ],
                ),
              ),
              10.kheightBox,
              CustomElevatedButton(
                buttonText: "Continue",
                height: 46,
                width: 100.w,
                onPressed: () {
                  if (otpCode.isNotEmpty) {
                    controller.verifyOtp(
                        otpCode); // Call the controller method to verify OTP
                  } else {
                    DialogHelper.showError("Please enter the OTP.");
                  }
                },
              ),
              10.kheightBox,
            ],
          ),
        ),
      ),
    );
  }
}
