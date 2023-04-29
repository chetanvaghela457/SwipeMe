import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/ctextformfield.dart';
import 'package:swipeme/constant/app_constant.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/register_screen/register_screen_logic.dart';

class RegisterScreenView extends GetView<RegisterScreenLogic> {
  const RegisterScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: cBackgroundPrimary,
      body: SingleChildScrollView(
        child: Container(
          color: cBackgroundPrimary,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.08,
                ),
                Container(
                  width: w * 0.25,
                  height: h * 0.06,
                  child: Image.asset(Assets.logo_sme),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: AppStyle.textStyleFamilyMontserratBold
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: h * 0.007,
                ),
                Text(
                  "Enter your details here",
                  textAlign: TextAlign.center,
                  style: AppStyle.textStyleFamilyMontserratMedium
                      .copyWith(fontSize: 13, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CTextFormField(
                        controller: controller.nameController,
                        hintText: "Name",
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r" "))
                        ],
                        textInputAction: TextInputAction.next),
                    Obx(() {
                      return controller.nameErr.value != ""
                          ? Container(
                              width: w * 0.8,
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                controller.nameErr.value,
                                textAlign: TextAlign.end,
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(color: cStarColor,fontSize: 11),
                              ),
                            )
                          : SizedBox();
                    })
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CTextFormField(
                        controller: controller.surNameController,
                        hintText: "Surname",
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r" "))
                        ],
                        textInputAction: TextInputAction.next),
                    Obx(() {
                      return controller.surnameErr.value != ""
                          ? Container(
                              width: w * 0.8,
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                controller.surnameErr.value,
                                textAlign: TextAlign.end,
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(color: cStarColor,fontSize: 11),
                              ),
                            )
                          : SizedBox();
                    })
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CTextFormField(
                        controller: controller.emailController,
                        hintText: "Email Id",
                        textInputType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r" "))
                        ],
                        textInputAction: TextInputAction.next),
                    Obx(() {
                      return controller.emailErr.value != ""
                          ? Container(
                        width: w * 0.8,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          controller.emailErr.value,
                          textAlign: TextAlign.end,
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(color: cStarColor,fontSize: 11),
                        ),
                      )
                          : SizedBox();
                    })
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CTextFormField(
                        controller: controller.passwordController,
                        hintText: "Password",
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r" "))
                        ],
                        textInputAction: TextInputAction.next),
                    Obx(() {
                      return controller.passErr.value != ""
                          ? Container(
                        width: w * 0.8,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          controller.passErr.value,
                          textAlign: TextAlign.end,
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(color: cStarColor,fontSize: 11),
                        ),
                      )
                          : SizedBox();
                    })
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CTextFormField(
                        controller: controller.cPasswordController,
                        hintText: "Confirm Password",
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r" "))
                        ],
                        textInputAction: TextInputAction.done),
                    Obx(() {
                      return controller.confirmPasswordErr.value != ""
                          ? Container(
                        width: w * 0.8,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          controller.confirmPasswordErr.value,
                          textAlign: TextAlign.end,
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(color: cStarColor,fontSize: 11),
                        ),
                      )
                          : SizedBox();
                    })
                  ],
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                CButton(
                  width: w * 0.80,
                  onTap: () {
                    controller.signUp();
                  },
                  child: Center(
                    child: Text("Register",
                        style: AppStyle.textStyleFamilyMontserratBold.copyWith(
                            color: cWhite, letterSpacing: 1, fontSize: 15)),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Container(
                  width: w * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: w * 0.2,
                        height: 1,
                        color: cTextFieldHint,
                      ),
                      SizedBox(
                        width: w * 0.07,
                      ),
                      Text(
                        "or login with",
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(fontSize: 12, color: cBlack),
                      ),
                      SizedBox(
                        width: w * 0.07,
                      ),
                      Container(
                        width: w * 0.2,
                        height: 0.5,
                        color: cTextFieldHint,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: w * 0.8,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: cFacebookLoginColor, width: 2.5),
                      color: cFacebookLoginColor,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.icon_facebook,
                            width: w * 0.05,
                            height: w * 0.05,
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          Center(
                            child: Text("Continue with Facebook",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        color: cWhite,
                                        letterSpacing: 1,
                                        fontSize: 13)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: w * 0.8,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: cTextFieldHint, width: 1),
                      color: cWhite,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.icon_google,
                            width: w * 0.05,
                            height: w * 0.05,
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          Center(
                            child: Text("Continue with Google",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        color: cBlack,
                                        letterSpacing: 1,
                                        fontSize: 13)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: w * 0.8,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cBlack,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.icon_apple,
                            width: w * 0.05,
                            height: w * 0.05,
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          Center(
                            child: Text("Continue with Apple",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        color: cWhite,
                                        letterSpacing: 1,
                                        fontSize: 13)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
