
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeme/constant/app_constant.dart';

class SignInScreenLogic extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxString emailErr = "".obs, passErr = "".obs;

  void onSignIn(){
    RegExp regex = RegExp(Const.emailPattern);
    if(emailController.text.isEmpty && passwordController.text.isEmpty){
      debugPrint('Please enter the email and password');
      emailErr.value = "Please enter email.";
      passErr.value = "Please enter password.";
    }
    else if(emailController.text.isEmpty) {
      debugPrint('Please enter the email');
      emailErr.value = "Please enter email.";
    }
    else if(!regex.hasMatch(emailController.text)){
      emailErr.value = "Please enter valid email.";
    }

    else if(passwordController.text.isEmpty) {
      debugPrint('Please enter the password');
      passErr.value = "Please enter password.";
    }
    else if(passwordController.text.length < 6 ) {
      debugPrint('passwordTEC.text.length => ${passwordController.text.length}');
      debugPrint('Password must be 6 or more character');
      passErr.value = "Password must be 6 or more character";
    }
    else {
      emailErr.value = "";
      passErr.value = "";
      debugPrint('SAVE LOGIN DATA');

      // saveSignInData();
    }
  }

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
