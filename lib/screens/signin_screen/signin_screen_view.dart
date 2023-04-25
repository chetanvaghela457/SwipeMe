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
import 'package:swipeme/constant/strings.dart';
import 'package:swipeme/screens/signin_screen/signin_screen_logic.dart';

class SignInScreenView extends GetView<SignInScreenLogic> {
  const SignInScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<SignInScreenLogic>();
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: cBackgroundPrimary,
          body: SingleChildScrollView(
            child: Container(
              color: cBackgroundPrimary,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.1,
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
                      "Hello!",
                      textAlign: TextAlign.center,
                      style: AppStyle.textStyleFamilyMontserratBold
                          .copyWith(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      "Enter your details here",
                      textAlign: TextAlign.center,
                      style: AppStyle.textStyleFamilyMontserratMedium
                          .copyWith(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: h * 0.015,
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
                              ? SizedBox(
                                  height: h * 0.01,
                                )
                              : SizedBox();
                        }),
                        Obx(() {
                          return controller.emailErr.value != ""
                              ? Container(
                                  width: w * 0.85,
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    controller.emailErr.value,
                                    style: AppStyle
                                        .textStyleFamilyMontserratMedium
                                        .copyWith(color: cStarColor),
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
                              ? SizedBox(
                                  height: h * 0.01,
                                )
                              : SizedBox();
                        }),
                        Obx(() {
                          return controller.passErr.value != ""
                              ? Container(
                                  width: w * 0.85,
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    controller.passErr.value,
                                    style: AppStyle
                                        .textStyleFamilyMontserratMedium
                                        .copyWith(color: cStarColor),
                                  ),
                                )
                              : SizedBox();
                        })
                      ],
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Container(
                      width: w * 0.80,
                      child: Text(
                        "Forgot the Password ?",
                        textAlign: TextAlign.end,
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(fontSize: 12, color: cBlack),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    CButton(
                      width: w * 0.80,
                      onTap: () {
                        controller.onSignIn();
                      },
                      child: Center(
                        child: Text("Login",
                            style: AppStyle.textStyleFamilyMontserratBold
                                .copyWith(
                                    color: cWhite,
                                    letterSpacing: 1,
                                    fontSize: 15)),
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
                        height: 50,
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
                                    style: AppStyle
                                        .textStyleFamilyMontserratMedium
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
                        height: 50,
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
                                    style: AppStyle
                                        .textStyleFamilyMontserratMedium
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
                        height: 50,
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
                                    style: AppStyle
                                        .textStyleFamilyMontserratMedium
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
                      height: h * 0.1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.registerScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Don’t have an account ?',
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(fontSize: 12, color: cBlack),
                          children: [
                            TextSpan(
                                text: ' SignUp',
                                style: AppStyle.textStyleFamilyMontserratBold
                                    .copyWith(fontSize: 12, color: cSignUpColor)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
