import 'package:flutter/material.dart';

import '../constants/exports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool? obscureText;
  final String? obscureCharacter;
  final Widget? prefixIcon;
  final double? topContentPadding;
  final double? fieldPadding;
  final double? textFieldHeight;

  const CustomTextField({Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.obscureCharacter = '*',
    this.prefixIcon,
    this.topContentPadding = 0.0,
    this.fieldPadding = 0.024,
    this.textFieldHeight = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * fieldPadding!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: textFieldHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: AppColors.whiteColor,
              border: Border.all(
                width: 1.0,
                color: AppColors.blueColor,
              ),
            ),
            child: TextFormField(
              style: poppinsRegular.copyWith(
                fontSize: 14.0,
                color: AppColors.blackColor,
              ),
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText!,
              obscuringCharacter: obscureCharacter!,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 16.0, top: topContentPadding!),
                hintText: hintText,
                prefixIcon: prefixIcon,
                hintStyle: poppinsRegular.copyWith(
                  fontSize: 13.0,
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
