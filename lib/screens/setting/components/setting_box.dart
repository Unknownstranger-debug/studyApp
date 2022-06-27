import 'package:flutter/material.dart';

import '../../../constants/exports.dart';

class SettingBox extends StatelessWidget {
  final VoidCallback? onTap;
  final String? imagePath;
  final String? texts;

  const SettingBox({Key? key,
    required this.onTap,
    required this.imagePath,
    required this.texts,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Ink(
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
                  imagePath!,
                  height: 40.0,
                  width: 40.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    texts!,
                    style: poppinsSemiBold.copyWith(
                      fontSize: 17.0,
                      color: AppColors.whiteColor,
                    ),
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
