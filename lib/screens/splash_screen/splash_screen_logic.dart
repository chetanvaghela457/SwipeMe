import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeme/AppRoutes/app_route.dart';

class SplashScreenLogic extends GetxController {
  @override
  void onInit(){
    Future.delayed(Duration(seconds: 4), () {
      Get.toNamed(AppRoutes.welcomeScreen);
    });
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
