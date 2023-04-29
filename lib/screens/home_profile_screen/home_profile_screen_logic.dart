import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeProfileScreenLogic extends GetxController with StateMixin<dynamic> {

  TextEditingController searchKeywordController = TextEditingController();
  TextEditingController preferredLocationController = TextEditingController();

  RxString jobTypeDropDown = "".obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
