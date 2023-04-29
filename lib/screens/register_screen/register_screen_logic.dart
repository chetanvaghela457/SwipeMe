import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Constant/app_constant.dart';
import 'package:swipeme/Widget/progress_dialog_utils.dart';

class RegisterScreenLogic extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  RxString emailErr = "".obs,
      passErr = "".obs,
      confirmPasswordErr = "".obs,
      nameErr = "".obs,
      surnameErr = "".obs;

  void signUp() {
    RegExp regexEmail = RegExp(Const.emailPattern);

    if (nameController.text == "") {
      nameErr.value = "Please Enter a Name";
    } else {
      nameErr.value = "";
    }
    if (surNameController.text == "") {
      surnameErr.value = "Please Enter a Name";
    } else {
      surnameErr.value = "";
    }

    if (emailController.text == "") {
      emailErr.value = "Please Enter a Name";
    } else if (!regexEmail.hasMatch(emailController.text)) {
      emailErr.value = "Please Enter Valid Email";
    } else {
      emailErr.value = "";
    }

    if (passwordController.text == "") {
      passErr.value = "Please Enter Password";
    } else if (passwordController.text.length < 6) {
      passErr.value = "Password must be 6 or more character";
    } else {
      passErr.value = "";
    }
    if (cPasswordController.text == "") {
      confirmPasswordErr.value = "Please Enter Confirm Password";
    } else if (passwordController.text != cPasswordController.text) {
      confirmPasswordErr.value = "Password did not match";
    } else {
      confirmPasswordErr.value = "";
    }

    if(nameErr.value == "" && surnameErr.value == "" && emailErr.value == "" && passErr.value == "" && confirmPasswordErr.value == ""){

      callReg();

    }

  }

  Future<void> callReg() async {

    ProgressDialogUtils.showProgressDialog(Get.context);

    Get.offAllNamed(AppRoutes.createProfileScreen);


    ProgressDialogUtils.hideProgressDialog();

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
