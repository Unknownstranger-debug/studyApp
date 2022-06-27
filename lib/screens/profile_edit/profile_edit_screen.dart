import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/controllers/profile_edit_controller.dart';

import '../../constants/exports.dart';

class ProfileEditScreen extends GetView<ProfileEditController> {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileEditController());
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

      body: SafeArea(
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// profile details texts
                SizedBox(height: screenHeight(context) * 0.02),
                Center(
                  child: Text(
                    'Profile Details',
                    style: poppinsSemiBold.copyWith(
                      fontSize: 20.0,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),

                /// Circle Avatar
                SizedBox(height: screenHeight(context) * 0.02),
                Center(
                  child: Stack(
                    children: [
                      Image.asset(AppImages.noPersonAvatar),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          height: 22.0,
                          width: 22.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.blueDarkColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.edit,
                              size: 12.0,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// first and last name field
                SizedBox(height: screenHeight(context) * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: NewCustomTextField(
                    controller: controller.usernameController,
                    headingText: 'User Name',
                    hintText: '',
                  ),
                ),

                /// Education Level Dropdown
                const SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: NewCustomTextField(
                    controller: controller.educationLevelController,
                    headingText: 'Current Education Level',
                    hintText: 'Education Level',
                  ),
                ),

                /// Subject Combi/Diploma field
                const SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: NewCustomTextField(
                    controller: controller.subjectController,
                    headingText: 'Subject Combi/Diploma',
                    hintText: '',
                  ),
                ),

                /// Strength and weak Sub field
                const SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: NewCustomTextField(
                          controller: controller.strengthSubController,
                          headingText: 'Strength Sub',
                          hintText: '',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: NewCustomTextField(
                          controller: controller.weakSubController,
                          headingText: 'Weakness Sub',
                          hintText: '',
                        ),
                      ),
                    ],
                  ),
                ),

                /// Do you want User as your study buddy? texts
                const SizedBox(height: 24.0),
                Center(
                  child: Text(
                    'Do you want User as your study buddy?',
                    style: poppinsRegular.copyWith(
                      fontSize: 13.0,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),

                /// buttons
                const SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          onTap: () {},
                          btnColor: AppColors.redDarkColor,
                          btnText: 'No,\ncontinue searching',
                          fontSize: 13.0,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: CustomButton(
                          onTap: () {},
                          btnText: 'Yes, match \nmade in heaven',
                          btnColor: AppColors.greenAccentColor,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
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
