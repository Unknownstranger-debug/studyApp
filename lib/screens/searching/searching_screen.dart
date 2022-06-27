import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/constants/exports.dart';
import 'package:project_app/screens/person_found/person_found_screen.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class SearchingScreen extends StatefulWidget {
  const SearchingScreen({Key? key}) : super(key: key);

  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  @override
  initState() {
    super.initState();

    Timer(const Duration(seconds: 7), () => Get.to(const PersonFoundScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Beginning \nSearch',
              textAlign: TextAlign.center,
              style: poppinsSemiBold.copyWith(
                fontSize: 20.0,
                color: AppColors.whiteColor,
              ),
            ),
            const SizedBox(height: 32.0),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: screenHeight(context) * 0.32,
                    width: screenHeight(context) * 0.32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 36.0,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SimpleCircularProgressBar(
                      size: screenHeight(context) * 0.27,
                      backColor: Colors.transparent,
                      progressColors: const [
                        AppColors.greenAccentColor,
                        AppColors.greenAccentColor,
                      ],
                      mergeMode: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            Text(
              'Suggestion: \nTurn on notification so that \nwe can notify you when \nwe find someone',
              textAlign: TextAlign.center,
              style: poppinsLight.copyWith(
                fontSize: 15.0,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
