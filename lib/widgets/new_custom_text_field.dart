import 'package:flutter/material.dart';

import '../constants/exports.dart';

class NewCustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? headingText;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool? obscureText;
  final String? obscureCharacter;

  const NewCustomTextField({Key? key,
    required this.controller,
    required this.headingText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.obscureCharacter = '*',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(headingText!,
            style: poppinsRegular.copyWith(
              fontSize: 13,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        SizedBox(height: screenHeight(context) * 0.01),
        Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: AppColors.whiteColor,
            border: Border.all(
              width: 1.0,
              color: AppColors.blueColor,
            ),
          ),
          child: TextFormField(
            style: poppinsRegular.copyWith(
              fontSize: 14,
              color: AppColors.blackColor,
            ),
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText!,
            obscuringCharacter: obscureCharacter!,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 12.0, bottom: 0.0),
              hintText: hintText,
              hintStyle: poppinsRegular.copyWith(
                fontSize: 13,
                color: AppColors.greyColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}