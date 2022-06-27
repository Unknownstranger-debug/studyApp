import 'dart:async';

import 'package:get/get.dart';

import '../screens/profile_detail/profile_detail_screen.dart';

class LoginSuccessController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Future.delayed(
      const Duration(seconds: 5),
      () => Get.to(
        const ProfileDetailScreen(
          isLogin: true,
        ),
      ),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
