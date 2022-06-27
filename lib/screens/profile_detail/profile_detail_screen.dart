import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/screens/dialogs/logout_dialog.dart';

import '../../constants/exports.dart';
import '../../controllers/profile_detail_controller.dart';
import '../account_created/account_created_screen.dart';
import '../map/map_screen.dart';

class ProfileDetailScreen extends GetView<ProfileDetailController> {
  final bool isLogin;
  const ProfileDetailScreen({Key? key, required this.isLogin})
      : super(key: key);

  /// vision panel dropdown items
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          value: "Secondary School", child: Text("Secondary School")),
      const DropdownMenuItem(
          value: "Primary School", child: Text("Primary School")),
      const DropdownMenuItem(
          value: "Junior College", child: Text("Junior College")),
      const DropdownMenuItem(
          value: "Polytechnic", child: Text("Polytechnic")),
      const DropdownMenuItem(
          value: "University", child: Text("University")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileDetailController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
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
                SizedBox(height: screenHeight(context) * 0.05),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: NewCustomTextField(
                          controller: controller.firstNameController,
                          headingText: 'First Name',
                          hintText: '',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: NewCustomTextField(
                          controller: controller.lastNameController,
                          headingText: 'Last Name',
                          hintText: '',
                        ),
                      ),
                    ],
                  ),
                ),

                /// Education Level Dropdown
                const SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.03),
                  child: Text(
                    'Current Education Level',
                    style: poppinsRegular.copyWith(
                      fontSize: 13,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.01),
                Obx(
                  () => Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.024),
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.whiteColor,
                      border: Border.all(
                        width: 1.0,
                        color: AppColors.blueColor,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: DropdownButton(
                            value: controller.selectedValue.value,
                            items: dropdownItems,
                            hint: Text(
                              'Secondary School',
                              style: poppinsRegular.copyWith(
                                color: AppColors.greyColor,
                                fontSize: 13.0,
                              ),
                            ),
                            style: poppinsRegular.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 13.0,
                            ),
                            underline: const SizedBox(),
                            icon: const Icon(
                                Icons.arrow_drop_down_circle_outlined,
                                color: AppColors.primaryColor),
                            isExpanded: true,
                            onChanged: (String? value) {
                              controller.selectedValue.value = value!;
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                      ],
                    ),
                  ),
                ),

                /// Subject Combi/Diploma field
                const SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: Expanded(
                    child: NewCustomTextField(
                      controller: controller.subjectController,
                      headingText: 'Subject Combi/Diploma',
                      hintText: '',
                    ),
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

                /// Preferred Study Location field
                const SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: Expanded(
                    child: NewCustomTextField(
                      controller: controller.studyLocationController,
                      headingText: 'Preferred Study Location',
                      hintText: '',
                    ),
                  ),
                ),

                /// Confirm Details Button
                const SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024),
                  child: CustomButton(
                    onTap: () {
                      isLogin == true
                          ? Get.to(const MapScreen())
                          : Get.to(const AccountCreatedScreen());
                    },
                    btnText: 'Confirm Details',
                  ),
                ),

                /// logout Button
                const SizedBox(height: 16.0),
                isLogin == true
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenHeight(context) * 0.15),
                        child: CustomButton(
                          onTap: () {
                            Get.defaultDialog(
                              title: '',
                              content: const LogoutDialog(),
                            );
                          },
                          btnText: 'Log Out',
                          btnColor: AppColors.redDarkColor,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
