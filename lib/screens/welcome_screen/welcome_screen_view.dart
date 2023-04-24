

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/welcome_screen/welcome_screen_logic.dart';

class WelcomeScreenView extends GetView<WelcomeScreenLogic> {
  const WelcomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<WelcomeScreenLogic>();
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: cBackgroundPrimary,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h * 0.15,
            ),
            Container(
              width: w,
              height: h*0.39,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.welcometop), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            Text("Find your perfect \njob match!",textAlign: TextAlign.center,style: AppStyle.textStyleFamilyMontserratBold.copyWith(fontSize: 25,fontWeight: FontWeight.w800),),
            SizedBox(
              height: h * 0.02,
            ),
            Text("Finding your dream job is now much\neasier and faster like never before",textAlign: TextAlign.center,style: AppStyle.textStyleFamilyMontserratMedium.copyWith(fontSize: 15,fontWeight: FontWeight.w300),),
            SizedBox(
              height: h * 0.08,
            ),
            CButton(
              width: w*0.65,
              onTap: () {
                Get.toNamed(AppRoutes.choiceScreen);
              },
              child: Center(
                child: Text("Let's Get Started",
                    style: AppStyle.textStyleFamilyMontserratBold
                        .copyWith(color: cWhite, letterSpacing: 1)),
              ),
            ),
            Container(
              height: h * 0.01,
            )
          ],
        ),
      ),
    );
  }
}