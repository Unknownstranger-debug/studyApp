import 'package:get/get.dart';
import 'package:project_app/screens/map/map_screen.dart';

class AccountCreatedController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Future.delayed(
      const Duration(seconds: 5),
          () => Get.to(
        const MapScreen(),
      ),
    );
  }

}