import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/published_profile_screen/published_profile_screen_logic.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_logic.dart';

class PublishedProfileScreenView extends GetView<PublishedProfileScreenLogic> {
  const PublishedProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: cBackgroundPrimary,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Congratulations!",
            textAlign: TextAlign.center,
            style: AppStyle.textStyleFamilyMontserratBold
                .copyWith(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: h * 0.007,
          ),
          Text(
            "Naman Agarwal your profile\nhas been published",
            textAlign: TextAlign.center,
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 13, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: w * 0.35,
            width: w * 0.35,
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundColor: cBorderImageColor,
                  child:
                      ClipOval(child: Image.asset(Assets.circle_image_profile)),
                ),
                Positioned(
                    bottom: 90,
                    right: -35,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      child: Image.asset(
                        Assets.verified_image,
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            "Currently Working as",
            textAlign: TextAlign.center,
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          RichText(
            text: TextSpan(
              text: 'Head Engineer',
              style: AppStyle.textStyleFamilyMontserratSemiBold
                  .copyWith(fontSize: 18, color: cButtonColor),
              children: [
                TextSpan(
                    text: ' at',
                    style: AppStyle.textStyleFamilyMontserratSemiBold
                        .copyWith(fontSize: 18, color: cBlack)),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            "Pricewater CooperHouse",
            textAlign: TextAlign.center,
            style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                fontSize: 16, fontWeight: FontWeight.w300, color: cBlack),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.facebook_icon_profile,
                width: w * 0.08,
                height: w * 0.08,
              ),
              SizedBox(
                width: w * 0.04,
              ),
              Image.asset(
                Assets.instagram_icon_profile,
                width: w * 0.08,
                height: w * 0.08,
              ),
              SizedBox(
                width: w * 0.04,
              ),
              SvgPicture.asset(
                Assets.linkedin_icon_profile,
                width: w * 0.08,
                height: w * 0.08,
              ),
              SizedBox(
                width: w * 0.04,
              ),
              SvgPicture.asset(
                Assets.twitter_icon_profile,
                width: w * 0.08,
                height: w * 0.08,
              ),
              SizedBox(
                width: w * 0.04,
              ),
              Image.asset(
                Assets.github_icon_profile,
                width: w * 0.08,
                height: w * 0.08,
              ),
            ],
          ),
          SizedBox(
            height: h * 0.13,
          ),
          CButton(
            height: 50,
            width: w * 0.70,
            onTap: () {
              // controller.openPreviewProfileScreen();
            },
            child: Center(
              child: Text("Start Sviping Now",
                  style: AppStyle.textStyleFamilyMontserratBold
                      .copyWith(color: cWhite, fontSize: 18)),
            ),
          ),
        ],
      )),
    );
  }
}
