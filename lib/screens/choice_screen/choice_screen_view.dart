import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/choice_screen/choice_screen_logic.dart';
import 'package:swipeme/screens/welcome_screen/welcome_screen_logic.dart';

class ChoiceScreenView extends GetView<ChoiceScreenLogic> {
  const ChoiceScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: cBackgroundPrimary,
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: h * 0.15,
              ),
              Text(
                "Choose Your\nChallenge",
                textAlign: TextAlign.center,
                style: AppStyle.textStyleFamilyMontserratBold
                    .copyWith(fontSize: 25, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: h * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.signInScreen);
                },
                child: Container(
                  width: w * 0.45,
                  height: w * 0.45,
                  child: Image.asset(Assets.findJob),
                ),
              ),
              SizedBox(
                height: h * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.signInScreen);
                },
                child: Container(
                  width: w * 0.45,
                  height: w * 0.45,
                  child: Image.asset(Assets.find_employee),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
