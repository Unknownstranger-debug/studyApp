import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/constants/exports.dart';

import '../../controllers/login_success_controller.dart';

class LoginSuccessScreen extends GetView<LoginSuccessController> {
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginSuccessController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.036),
          child: Text('Login Successful \nWelcome back User',
            textAlign: TextAlign.center,
            style: poppinsRegular.copyWith(
              fontSize: 16.0,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
