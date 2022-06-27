import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/constants/exports.dart';

class MsgInboxScreen extends StatelessWidget {
  MsgInboxScreen({Key? key}) : super(key: key);

  TextEditingController enterMsgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      /// appbar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.blueDarkColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.whiteColor,
          ),
        ),
        titleSpacing: 0.0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.noPersonAvatar,
              height: 40.0,
              width: 40.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 8.0),
            Text(
              'User',
              style: poppinsSemiBold.copyWith(
                fontSize: 17.0,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),

      /// bottom bar
      bottomNavigationBar: Container(
        height: 75.0,
        width: screenWidth(context),
        color: AppColors.blueDarkColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: AppColors.whiteColor,
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: CustomTextField(
                  controller: enterMsgController,
                  hintText: 'Enter your texts...',
                  fieldPadding: 0.0,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: AppColors.whiteColor,
                size: 20.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: AppColors.whiteColor,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
