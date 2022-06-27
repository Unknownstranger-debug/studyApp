import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';
import '../../../controllers/forgot_pass_controller.dart';
import '../login/login_screen.dart';

class NewPasswordScreen extends GetView<ForgotPasswordController> {
  const NewPasswordScreen({Key? key}) : super(key: key);

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
                  'Please Enter your new password. Now, make sure not to lose it again',
                  textAlign: TextAlign.center,
                  style: poppinsRegular.copyWith(
                    fontSize: 13.0,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),

              /// new password field
              SizedBox(height: screenHeight(context) * 0.04),
              CustomTextField(
                controller: controller.newPasswordController,
                hintText: 'New Password',
                topContentPadding: 16.0,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: AppColors.greyColor,
                ),
              ),

              /// confirm new password field
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: controller.confirmPasswordController,
                hintText: 'Confirm New Password',
                topContentPadding: 16.0,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: AppColors.greyColor,
                ),
              ),

              /// Save Changes Button
              SizedBox(height: screenHeight(context) * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenHeight(context) * 0.024),
                child: CustomButton(
                  onTap: () {
                    Get.to(const LoginScreen());
                  },
                  btnText: 'Save Changes',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
