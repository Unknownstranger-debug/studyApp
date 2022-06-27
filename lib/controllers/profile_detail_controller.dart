import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDetailController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController strengthSubController = TextEditingController();
  TextEditingController weakSubController = TextEditingController();
  TextEditingController studyLocationController = TextEditingController();

  RxString selectedValue = "Secondary School".obs;
}