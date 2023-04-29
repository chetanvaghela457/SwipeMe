import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/Constant/appstyle.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/preview_profile_screen/preview_profile_logic.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_logic.dart';

class PreviewProfileScreenView extends GetView<PreviewProfileScreenLogic> {
  const PreviewProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: cBackgroundPrimary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.03,
            ),
            SizedBox(
              width: w,
              height: h * 0.75,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: w * 0.9,
                    height: h * 0.55,
                    decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: cSwiperShadowColor,
                            offset: const Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 8.0,
                          ),
                        ]),
                  ),
                  Container(
                    width: w * 0.83,
                    height: h * 0.60,
                    decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: cSwiperShadowColor,
                            offset: const Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 8.0,
                          ),
                        ]),
                  ),
                  Container(
                    width: w * 0.75,
                    height: h * 0.65,
                    decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: cSwiperShadowColor,
                            offset: const Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 8.0,
                          ),
                        ]),
                    child: profileData(w, h),
                  ),
                ],
              ),
            ),
            CButtonBorder(
              height: 50,
              width: w * 0.80,
              onTap: () {
                controller.openProfilePreviewDialog(context);
              },
              child: Center(
                child: Text("View Full Profile",
                    style: AppStyle.textStyleFamilyMontserratMedium
                        .copyWith(color: cBlack, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            CButton(
              height: 50,
              width: w * 0.80,
              onTap: () {
                controller.openPublishedProfileScreen();
              },
              child: Center(
                child: Text("Publish",
                    style: AppStyle.textStyleFamilyMontserratBold.copyWith(
                        color: cWhite, letterSpacing: 1, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            CButtonBorder(
              height: 50,
              width: w * 0.80,
              onTap: () {
                // controller.openCvUploadDialog();
              },
              child: Center(
                child: Text("Make Edits",
                    style: AppStyle.textStyleFamilyMontserratMedium
                        .copyWith(color: cBlack, fontSize: 15)),
              ),
            ),
          ],
        ));
  }

  Widget profileData(double w, double h) {
    return Padding(
      padding: EdgeInsets.only(
          left: w * 0.05, right: w * 0.05, top: h * 0.02, bottom: h * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Naman Agarwal",
                    textAlign: TextAlign.center,
                    style: AppStyle.textStyleFamilyMontserratBold
                        .copyWith(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: h * 0.005,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.facebook_icon_profile,
                        width: w * 0.04,
                        height: w * 0.04,
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      Image.asset(
                        Assets.instagram_icon_profile,
                        width: w * 0.04,
                        height: w * 0.04,
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      SvgPicture.asset(
                        Assets.linkedin_icon_profile,
                        width: w * 0.04,
                        height: w * 0.04,
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      SvgPicture.asset(
                        Assets.twitter_icon_profile,
                        width: w * 0.04,
                        height: w * 0.04,
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      Image.asset(
                        Assets.github_icon_profile,
                        width: w * 0.04,
                        height: w * 0.04,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  CButton(
                    height: 20,
                    width: w * 0.35,
                    child: Center(
                      child: Text("6 yrs of Experience",
                          style: AppStyle.textStyleFamilyMontserratBold.copyWith(
                              color: cWhite, letterSpacing: 1, fontSize: 10)),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Text(
                    "Currently Working as",
                    style: AppStyle.textStyleFamilyMontserratMedium
                        .copyWith(fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Head Engineer',
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(fontSize: 11, color: cButtonColor),
                      children: [
                        TextSpan(
                            text: ' at',
                            style: AppStyle.textStyleFamilyMontserratSemiBold
                                .copyWith(fontSize: 11, color: cBlack)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Text(
                    "Pricewater CooperHouse",
                    style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                        fontSize: 11, fontWeight: FontWeight.w300, color: cBlack),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundColor: cBorderImageColor,
                    child:
                        ClipOval(child: Image.asset(Assets.circle_image_profile)),
                  ),
                  SizedBox(height: h*0.01,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.location_profile,
                        width: w * 0.04,
                        height: w * 0.04,
                      ),
                      SizedBox(width: w*0.02,),
                      Text(
                        "Kolkata",
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(fontSize: 13, color: cBlack),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: w * 0.01,
              )
            ],
          ),
          SizedBox(height: h*0.009,),
          Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
          SizedBox(height: h*0.009,),
          Text(
            "Skills",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
          ),
          SizedBox(height: h*0.009,),
          Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
          SizedBox(height: h*0.009,),
          Text(
            "About Self",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
          ),
          SizedBox(height: h*0.005,),
          Text(
            "Lörem ipsum rak sylynade nokrolingar.\nBenade onologi antide ytt perade. Disa\nläshund: plasuning ser då tetrar. ",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 11, fontWeight: FontWeight.w300,color: cTextFieldHint),
          ),
          SizedBox(height: h*0.009,),
          Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
          SizedBox(height: h*0.009,),
          Text(
            "Achievements & Resposibilities",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
          ),
          SizedBox(height: h*0.005,),
          Text(
            " Lörem ipsum rak sylynade nokro\nBenade onologi antide ytt pera\nläshund: plasuning ser då",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 11, fontWeight: FontWeight.w300,color: cTextFieldHint),
          ),
          SizedBox(height: h*0.009,),
          Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
          SizedBox(height: h*0.009,),
          Text(
            "Projects/ Portfolio",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
          ),
          SizedBox(height: h*0.005,),
          Text(
            "Levi’s Data Management\nwww.levismanagement.com",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 11, fontWeight: FontWeight.w300,color: cTextFieldHint),
          ),
          SizedBox(height: h*0.009,),
          Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
          SizedBox(height: h*0.009,),
          Text(
            "Education",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
          ),
          SizedBox(height: h*0.005,),
          Text(
            " Don Bosco (ISC) 2010-2011\nThe Heritage (Masters in Engineering\n2014-2018",
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 11, fontWeight: FontWeight.w300,color: cTextFieldHint),
          ),
        ],
      ),
    );
  }
}
