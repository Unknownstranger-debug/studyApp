import 'package:flutter/material.dart';

import '../constants/exports.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final double? fontSize;
  final String? btnText;
  final Color? btnColor;
  final Color? btnTextColor;
  final VoidCallback? onTap;

  const CustomButton({
    Key? key,
    this.width,
    this.height = 50.0,
    this.radius,
    this.fontSize = 14.0,
    this.btnText = 'Button Text',
    this.btnColor = AppColors.blueColor,
    this.btnTextColor = AppColors.whiteColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width ?? MediaQuery.of(context).size.width, height!),
        primary: btnColor,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 50.0),
        ),
      ),
      onPressed: onTap,
      child: Center(
        child: Text(
          btnText!,
          textAlign: TextAlign.center,
          style: poppinsSemiBold.copyWith(
            color: btnTextColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}