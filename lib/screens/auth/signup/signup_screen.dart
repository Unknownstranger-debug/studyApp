import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/screens/signup_success/signup_success_screen.dart';

import '../../../constants/exports.dart';
import '../../../controllers/signup_controller.dart';
import '../login/login_screen.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              children: [
                /// top logo
                SizedBox(height: screenHeight(context) * 0.04),
                Image.asset(AppImages.appLogo),

                /// register now texts
                const SizedBox(height: 8.0),
                Text(
                  'Don\'t have an account? \nRegister one now',
                  textAlign: TextAlign.center,
                  style: poppinsSemiBold.copyWith(
                    fontSize: 16.0,
                    color: AppColors.whiteColor,
                  ),
                ),

                /// username field
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: controller.userNameController,
                  hintText: 'UserName',
                ),

                /// email field
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: controller.emailController,
                  hintText: 'Email',
                ),

                /// password field
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: controller.passwordController,
                  hintText: 'Password',
                ),

                /// confirm password field
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: controller.confirmPasswordController,
                  hintText: 'Confirm Password',
                ),

                /// register account button
                const SizedBox(height: 24.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: CustomButton(
                    onTap: () {
                      Get.to(const SignupSuccessScreen());
                    },
                    btnText: 'Register Account',
                  ),
                ),

                /// login here button
                const SizedBox(height: 24.0),
                Text(
                  'Already have an account?',
                  textAlign: TextAlign.center,
                  style: poppinsSemiBold.copyWith(
                    fontSize: 12.0,
                    color: AppColors.whiteColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  child: Text(
                    'Log In Here',
                    textAlign: TextAlign.center,
                    style: poppinsSemiBold.copyWith(
                      fontSize: 12.0,
                      color: AppColors.whiteColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
