import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/constants/exports.dart';

import '../auth/login/login_screen.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Are you sure you want log out?',
          style: poppinsRegular.copyWith(
            fontSize: 14.0,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: screenHeight(context) * 0.03),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                  onTap: () {
                    Get.back();
                  },
                  btnText: 'No',
                  btnColor: AppColors.greenAccentColor,
                  height: 40.0,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: CustomButton(
                  onTap: () {
                    Get.offAll(const LoginScreen());
                  },
                  btnText: 'Yes',
                  btnColor: AppColors.redDarkColor,
                  height: 40.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
