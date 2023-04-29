import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/Constant/appstyle.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/match_found_screen/match_found_screen_logic.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_logic.dart';

class MatchFoundScreenView extends GetView<MatchFoundScreenLogic> {
  const MatchFoundScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: cBackgroundPrimary,
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: h*0.4,),
                  Image.asset(
                    Assets.match_found_cartoon_bg,
                    width: w,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "It’s a Match!",
                      textAlign: TextAlign.center,
                      style: AppStyle.textStyleFamilyMontserratBold
                          .copyWith(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Google has\nsviped your profile right\nfor the position as\n',
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(fontSize: 16, color: cBlack),
                          children: [
                            TextSpan(
                                text: 'Head Engineer',
                                style: AppStyle.textStyleFamilyMontserratSemiBold
                                    .copyWith(fontSize: 20, color: cButtonColor)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    SizedBox(
                      height: w * 0.25,
                      width: w * 0.25,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: cBorderImageColor,
                            child:
                            ClipOval(child: Image.asset(Assets.circle_image_profile)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "You have been sviped",
                      textAlign: TextAlign.center,
                      style: AppStyle.textStyleFamilyMontserratBold
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      "You have got a\nnew opportunity ",
                      textAlign: TextAlign.center,
                      style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w300, color: cBlack),
                    ),
                    SizedBox(
                      height: h * 0.06,
                    ),
                    CButton(
                      height: 50,
                      width: w * 0.5,
                      onTap: () {
                        // controller.openDashboardScreen();
                      },
                      child: Center(
                        child: Text("Get Started",
                            style: AppStyle.textStyleFamilyMontserratBold
                                .copyWith(color: cWhite, fontSize: 18)),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
