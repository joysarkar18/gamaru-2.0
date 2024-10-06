import 'package:flutter/material.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';
import 'package:get/get.dart';

class DialogHelper {
  static void showLoading([String? message]) {
    Get.dialog(
      WillPopScope(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    height: 80.kh,
                    width: 80.kh,
                    decoration: BoxDecoration(
                      color: AppColors.java,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0.kh),
                      ),
                    ),
                    padding: EdgeInsets.all(12.kh),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )),
              ),
              // message != null ? SizedBox(height: 8.kh) : const SizedBox(),
              // message != null ? Text(message) : const SizedBox(),
            ],
          ),
        ),
        onWillPop: () => Future.value(false),
      ),
      barrierDismissible: false,
      barrierColor: const Color(0xff141A31).withOpacity(.4),
      useSafeArea: true,
    );
  }

  static void showError(String message) {
    Get.snackbar(
      "Error",
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: const Color(0xffCC1728),
      colorText: Colors.white,
    );
  }

  static void showSuccess(String message) {
    Get.snackbar(
      "Success",
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.genoa,
      colorText: Colors.white,
    );
  }

  //hide loading
  static Future<void> hideDialog() async {
    if (Get.isDialogOpen!) Get.until((route) => !Get.isDialogOpen!);
  }
}
