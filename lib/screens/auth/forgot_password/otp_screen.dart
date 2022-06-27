import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../constants/exports.dart';
import '../../../controllers/forgot_pass_controller.dart';
import 'new_password_screen.dart';

class OTPScreen extends GetView<ForgotPasswordController> {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgotPasswordController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      /// appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.whiteColor,
          ),
        ),
      ),

      /// body
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// top image
              SizedBox(height: screenHeight(context) * 0.06),
              Container(
                height: screenHeight(context) * 0.2,
                width: screenHeight(context) * 0.2,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.whiteColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.lock,
                    size: 100.0,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),

              /// Trouble with logging in? texts
              SizedBox(height: screenHeight(context) * 0.024),
              Text(
                'Trouble with logging in?',
                style: poppinsRegular.copyWith(
                  fontSize: 20.0,
                  color: AppColors.whiteColor,
                ),
              ),

              /// description texts
              SizedBox(height: screenHeight(context) * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenHeight(context) * 0.024),
                child: Text(
                  'Enter your confirmation code and your new password. Make sure not to lose it again',
                  textAlign: TextAlign.center,
                  style: poppinsRegular.copyWith(
                    fontSize: 13.0,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),

              /// otp field
              SizedBox(height: screenHeight(context) * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
                child: Pinput(
                  length: 4,
                  controller: controller.confirmationCodeController,
                  closeKeyboardWhenCompleted: false,
                  defaultPinTheme: PinTheme(
                    height: 60.0,
                    width: 50.0,
                    textStyle: poppinsBold.copyWith(
                      fontSize: 30.0,
                      color: AppColors.blackColor,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: AppColors.whiteColor,
                    )
                  ),
                ),
              ),

              /// Next Button
              SizedBox(height: screenHeight(context) * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenHeight(context) * 0.024),
                child: CustomButton(
                  onTap: () {
                    Get.to(const NewPasswordScreen());
                  },
                  btnText: 'Next',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
