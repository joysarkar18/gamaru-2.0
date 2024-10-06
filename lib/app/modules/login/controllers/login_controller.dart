import 'package:flutter/material.dart';
import 'package:gamaru/app/modules/login/views/otp_view.dart';
import 'package:gamaru/app/routes/app_pages.dart';
import 'package:gamaru/app/services/dialog_service.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends GetxController {
  final supabase = Supabase.instance.client;
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }

  // Phone number validation
  bool validatePhoneNumber(String phoneNumber) {
    return phoneNumber.isNotEmpty && phoneNumber.length == 10;
  }

  Future<void> sendOtp() async {
    String phoneNumber = phoneNumberController.text.trim();

    // Validate phone number
    if (!validatePhoneNumber(phoneNumber)) {
      DialogHelper.showError("Please enter a valid 10-digit phone number.");
      return;
    }

    // Show loading dialog
    DialogHelper.showLoading("Sending OTP...");

    try {
      // Send OTP via Supabase
      await supabase.auth.signInWithOtp(
        phone: '+91$phoneNumber',
        channel: OtpChannel.whatsapp, // You can change this to sms or email
      );

      // Hide loading and navigate to OTP view
      DialogHelper.hideDialog();
      gotoOtpView();
    } catch (e) {
      // Show error message and hide loading
      DialogHelper.hideDialog();
      DialogHelper.showError(e.toString());
    }
  }

  Future<void> verifyOtp(String otp) async {
    try {
      DialogHelper.showLoading(); // Show loading indicator while verifying OTP

      final AuthResponse response = await supabase.auth.verifyOTP(
        phone: '+91${phoneNumberController.text.trim()}', // User's phone number
        token: otp, // The OTP entered by the user
        type: OtpType
            .sms, // You can change this to match the channel (sms/whatsapp) used
      );

      if (response.session != null) {
        // OTP verification successful
        DialogHelper.hideDialog();
        DialogHelper.showSuccess("OTP Verified Successfully!");

        // Navigate to the next screen or perform additional logic
        gotoHomeScreen();
      } else {
        // Handle verification error
        DialogHelper.hideDialog();
        DialogHelper.showError("OTP verification failed. Please try again.");
      }
    } catch (e) {
      DialogHelper.hideDialog();
      DialogHelper.showError("An error occurred: ${e.toString()}");
    }
  }

  // Navigation to OTP view
  void gotoOtpView() {
    Get.to(const OtpView(),
        arguments: {"phoneNo": phoneNumberController.text.trim()});
  }

  void gotoHomeScreen() {
    Get.toNamed(Routes.HOME);
  }
}