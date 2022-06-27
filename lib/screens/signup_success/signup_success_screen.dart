import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/constants/exports.dart';

import '../../controllers/signup_success_controller.dart';


class SignupSuccessScreen extends GetView<SignupSuccessController>{
  const SignupSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignupSuccessController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.036),
          child: Text('Thanks for joining the family, now lets get some details from you to '
              'help you find others to group with you',
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
