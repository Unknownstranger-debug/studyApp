import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/screens/login_success/login_success_screen.dart';

import '../../../constants/exports.dart';
import '../../../controllers/login_controller.dart';
import '../forgot_password/forgot_pass_screen.dart';
import '../signup/signup_screen.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
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
                  'Welcome Back \nLogin to start your search immediately',
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

                /// password field
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: controller.passwordController,
                  hintText: 'Password',
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: TextButton(
                      onPressed: () {
                        Get.to(const ForgotPasswordScreen());
                      },
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.center,
                        style: poppinsSemiBold.copyWith(
                          fontSize: 12.0,
                          color: AppColors.blueColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),

                /// login button
                const SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: CustomButton(
                    onTap: () {
                      Get.to(const LoginSuccessScreen());
                    },
                    btnText: 'Login',
                  ),
                ),

                /// register here button
                const SizedBox(height: 24.0),
                Text(
                  'Don\'t have an account? ',
                  textAlign: TextAlign.center,
                  style: poppinsSemiBold.copyWith(
                    fontSize: 12.0,
                    color: AppColors.whiteColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const SignupScreen());
                  },
                  child: Text(
                    'Register Here',
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
