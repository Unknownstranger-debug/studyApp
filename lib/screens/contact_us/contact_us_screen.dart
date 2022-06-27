import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/constants/exports.dart';
import 'package:project_app/screens/contact_us/msg_inbox.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.8,
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

          /// search field
          SizedBox(height: screenHeight(context) * 0.02),
          CustomTextField(controller: searchController, hintText: 'Search'),

          /// contacts
          SizedBox(height: screenHeight(context) * 0.016),
          userBox(context),
          SizedBox(height: screenHeight(context) * 0.01),
          userBox(context),

          /// similars studies
          SizedBox(height: screenHeight(context) * 0.032),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Some people with similar studies',
              style: poppinsSemiBold.copyWith(
                fontSize: 18.0,
                color: AppColors.whiteColor,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              itemBuilder: (context, index) {
                return userAddBox(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget userBox(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GestureDetector(
          onTap: (){
            Get.to(MsgInboxScreen());
          },
          child: Container(
            width: screenWidth(context),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: AppColors.greyColor,
                width: 0.7,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 48.0,
                  width: 48.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: AppColors.whiteColor,
                    image: const DecorationImage(
                      image: AssetImage(AppImages.noPersonAvatar),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'User',
                      style: poppinsSemiBold.copyWith(
                        fontSize: 20.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Text(
                      'Online',
                      style: poppinsSemiBold.copyWith(
                        fontSize: 10.0,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget userAddBox(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Container(
          width: screenWidth(context),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: AppColors.greyColor,
              width: 0.7,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 48.0,
                width: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColors.whiteColor,
                  image: const DecorationImage(
                    image: AssetImage(AppImages.noPersonAvatar),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'User',
                      style: poppinsSemiBold.copyWith(
                        fontSize: 20.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Text(
                      'Online',
                      style: poppinsSemiBold.copyWith(
                        fontSize: 10.0,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: AppColors.greyColor,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add, color: AppColors.greyColor),
                    const SizedBox(width: 4.0),
                    Text(
                      'ADD',
                      style: poppinsBold.copyWith(
                        fontSize: 16.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Icon(
                  Icons.close,
                  color: AppColors.greyColor,
                  size: 28.0,
                ),
              ),
            ],
          ),
        ),
      );
}
