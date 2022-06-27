import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../controllers/splash_controller.dart';
import '../auth/login/login_screen.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body: GestureDetector(
        onTap: (){
          Get.to(const LoginScreen());
        },
        child: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.appLogo),
              const SizedBox(height: 6.0),
              Text('Welcome to StudyGroup',
                textAlign: TextAlign.center,
                style: poppinsBold.copyWith(
                  color: AppColors.yellowDarkColor,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 16.0),
              Text('To begin your journey, please tap the screen',
                style: poppinsRegular.copyWith(
                  fontSize: 16.0,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
