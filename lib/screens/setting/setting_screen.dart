import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:project_app/controllers/settings_controller.dart';
import 'package:project_app/screens/profile_edit/profile_edit_screen.dart';

import '../../constants/exports.dart';
import 'components/setting_box.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          topLeft: Radius.circular(16.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10.0),
          Center(
            child: Container(
              height: 5.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.greyColor,
              ),
            ),
          ),

          /// account
          SizedBox(height: screenHeight(context) * 0.02),
          SettingBox(
            onTap: () {
              Get.to(const ProfileEditScreen());
            },
            imagePath: AppImages.noPersonAvatar,
            texts: 'Account',
          ),

          /// do not disturb
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: AppColors.greyColor,
                  width: 1.0,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.doNotDisturb,
                    height: 40.0,
                    width: 40.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      'Do Not Disturb',
                      style: poppinsSemiBold.copyWith(
                        fontSize: 17.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  Obx(
                    () => FlutterSwitch(
                      height: 30.0,
                      width: 50.0,
                      activeColor: AppColors.blueColor,
                      padding: 2.0,
                      value: controller.toggleVal.value,
                      onToggle: (value) {
                        controller.toggleVal.value = value;
                        controller.toggleVal.value == true
                            ? Get.defaultDialog(
                                title: '',
                                content: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Text(
                                        'Turning this on will prevent others from finding you. '
                                        'You sure you want continue',
                                        textAlign: TextAlign.center,
                                        style: poppinsRegular.copyWith(
                                          fontSize: 13.0,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height: screenHeight(context) * 0.024),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: CustomButton(
                                              onTap: () {
                                                controller.toggleVal.value = false;
                                                Get.back();
                                              },
                                              btnText: 'No',
                                              btnColor: AppColors.redDarkColor,
                                              height: 42.0,
                                            ),
                                          ),
                                          const SizedBox(width: 12.0),
                                          Expanded(
                                            child: CustomButton(
                                              onTap: () {},
                                              btnText: 'Yes',
                                              btnColor: AppColors.greenAccentColor,
                                              height: 42.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// change background image
          SettingBox(
            onTap: () {},
            imagePath: AppImages.bgImage,
            texts: 'Change background  image',
          ),

          /// contact us
          SettingBox(
            onTap: () {},
            imagePath: AppImages.contactUs,
            texts: 'Contact Us',
          ),
          SizedBox(height: screenHeight(context) * 0.03),
        ],
      ),
    );
  }
}
