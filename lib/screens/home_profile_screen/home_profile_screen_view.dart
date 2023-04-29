import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swipeme/Constant/app_constant.dart';
import 'package:swipeme/Constant/app_image.dart';
import 'package:swipeme/Constant/appstyle.dart';
import 'package:swipeme/Widget/CustomDropdown.dart';
import 'package:swipeme/Widget/ctextformfield.dart';
import 'package:swipeme/screens/home_profile_screen/home_profile_screen_logic.dart';
import 'package:swipeme/screens/home_screen/home_screen_logic.dart';
import 'package:swipeme/screens/navigation_dashboard/dashboard_controller.dart';

import '../../Constant/colors.dart';

class HomeProfileScreenView extends GetView<HomeProfileScreenLogic> {
  const HomeProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: w,
            height: h * 0.09,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            debugPrint("Open Drawer");
                            Get.find<DashboardLogic>()
                                .scaffoldKey
                                .currentState!
                                .openDrawer();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: w * 0.06),
                            child: SvgPicture.asset(
                              Assets.open_nav_side,
                              height: w * 0.03,
                              width: w * 0.03,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Text(
                      "Naman Agarwal",
                      style: AppStyle.textStyleFamilyMontserratBold
                          .copyWith(fontSize: 21, color: cBlack),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Text(
                      "Currently working as Head Engineer At\nPriceWater CooperHouse",
                      style: AppStyle.textStyleFamilyMontserratMedium
                          .copyWith(fontSize: 12, color: cBlack),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          width: (w * 0.8) / 3,
                          child: Column(
                            children: [
                              Container(
                                width: (w * 0.8) / 3,
                                height: (w * 0.8) / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: cButtonColor, width: 2),
                                  color: cWhite,
                                ),
                                child: Center(
                                  child: Text(
                                    "25",
                                    style: AppStyle
                                        .textStyleFamilyMontserratBold
                                        .copyWith(fontSize: 28),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text(
                                "No. of\nswipes left",
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .textStyleFamilyMontserratSemiBold
                                    .copyWith(fontSize: 16, color: cBlack),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w * 0.05,
                        ),
                        Container(
                          width: (w * 0.8) / 3,
                          child: Column(
                            children: [
                              Container(
                                width: (w * 0.8) / 3,
                                height: (w * 0.8) / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: cButtonColor, width: 2),
                                  color: cWhite,
                                ),
                                child: Center(
                                  child: Text(
                                    "10",
                                    style: AppStyle
                                        .textStyleFamilyMontserratBold
                                        .copyWith(fontSize: 28),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text(
                                "No. of\nmatches",
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .textStyleFamilyMontserratSemiBold
                                    .copyWith(fontSize: 16, color: cBlack),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w * 0.05,
                        ),
                        Container(
                          width: (w * 0.8) / 3,
                          child: Column(
                            children: [
                              Container(
                                width: (w * 0.8) / 3,
                                height: (w * 0.8) / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: cButtonColor, width: 2),
                                  color: cWhite,
                                ),
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: AppStyle
                                        .textStyleFamilyMontserratBold
                                        .copyWith(fontSize: 28),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text(
                                "Active\nChats",
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .textStyleFamilyMontserratSemiBold
                                    .copyWith(fontSize: 16, color: cBlack),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    yourCareerPreferencesWidget(w, h),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Your Profile Performance",
                      style: AppStyle.textStyleFamilyMontserratBold
                          .copyWith(fontSize: 19, color: cBlack),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "No. of Recruiters Swiped right",
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(fontSize: 14, color: cBlack),
                        ),
                        Text(
                          "10",
                          style: AppStyle.textStyleFamilyMontserratBold
                              .copyWith(fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Container(
                      width: w * 0.9,
                      height: 0.3,
                      color: cTextFieldHint,
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "No. of Recruiters viewed your full profile ",
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(fontSize: 14, color: cBlack),
                        ),
                        Text(
                          "10",
                          style: AppStyle.textStyleFamilyMontserratBold
                              .copyWith(fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Container(
                      width: w * 0.9,
                      height: 0.3,
                      color: cTextFieldHint,
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "No. of jobs you swiped",
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(fontSize: 14, color: cBlack),
                        ),
                        Text(
                          "10",
                          style: AppStyle.textStyleFamilyMontserratBold
                              .copyWith(fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Container(
                      width: w * 0.9,
                      height: 0.3,
                      color: cTextFieldHint,
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Text(
                      "Key skills working for you",
                      style: AppStyle.textStyleFamilyMontserratMedium
                          .copyWith(fontSize: 14, color: cBlack),
                    ),
                    //ShowSkills Array
                    SizedBox(
                      height: h * 0.02,
                    ),
                    profilePerformanceWidget(w, h),
                    SizedBox(
                      height: h * 0.08,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget yourCareerPreferencesWidget(double width, double height) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.006, bottom: height * 0.006),
      decoration: BoxDecoration(
        color: cButtonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: width * 0.75,
                          child: Text(
                            "Your Career Preferences",
                            style: AppStyle.textStyleFamilyMontserratSemiBold
                                .copyWith(color: cWhite, fontSize: 15),
                          )),
                      Image.asset(
                        Assets.edit_icon,
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (width * 0.8) / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              Assets.cp_eType,
                              width: width * 0.03,
                              height: width * 0.03,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Employment Type",
                                style: AppStyle
                                    .textStyleFamilyMontserratSemiBold
                                    .copyWith(color: cWhite, fontSize: 11),
                              ),
                              SizedBox(
                                height: height * 0.006,
                              ),
                              Text(
                                "Full-Time",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        color: cCpTextColor, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: (width * 0.8) / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              Assets.cp_Ctc,
                              width: width * 0.03,
                              height: width * 0.03,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expected CTC",
                                style: AppStyle
                                    .textStyleFamilyMontserratSemiBold
                                    .copyWith(color: cWhite, fontSize: 11),
                              ),
                              SizedBox(
                                height: height * 0.006,
                              ),
                              Text(
                                "40000000",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        color: cCpTextColor, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (width * 0.8) / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              Assets.cp_location,
                              width: width * 0.03,
                              height: width * 0.03,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Preferred Location",
                                style: AppStyle
                                    .textStyleFamilyMontserratSemiBold
                                    .copyWith(color: cWhite, fontSize: 11),
                              ),
                              SizedBox(
                                height: height * 0.006,
                              ),
                              Text(
                                "Kolkata",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        color: cCpTextColor, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: (width * 0.8) / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              Assets.cp_jType,
                              width: width * 0.03,
                              height: width * 0.03,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Job Type",
                                style: AppStyle
                                    .textStyleFamilyMontserratSemiBold
                                    .copyWith(color: cWhite, fontSize: 11),
                              ),
                              SizedBox(
                                height: height * 0.006,
                              ),
                              Text(
                                "Permanent",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        color: cCpTextColor, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget profilePerformanceWidget(double width, double height) {
    return Container(
      width: width * 0.9,
      height: height * 0.2,
      decoration: BoxDecoration(
        color: cTextFieldBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.only(
          left: width * 0.05,
          right: width * 0.05,
          top: height * 0.02,
          bottom: height * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Profile’s performance is",
            style: AppStyle.textStyleFamilyMontserratSemiBold
                .copyWith(fontSize: 16, color: cBlack),
          ),
          Row(
            children: [
              Container(
                width: (width * 0.8) / 2,
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Stack(
                    children: [
                      Center(
                          child: Image.asset(Assets.profile_low_score,
                              width: width * 0.30, fit: BoxFit.fitWidth)),
                      Container(
                          width: width * 0.5,
                          height: height * 0.1,
                          child: Center(
                            child: Text(
                              "Low",
                              textAlign: TextAlign.center,
                              style: AppStyle.textStyleFamilyMontserratMedium
                                  .copyWith(color: cCpTextColor, fontSize: 15),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                  width: (width * 0.8) / 2,
                  child: Column(
                    children: [
                      Text(
                        "Recruiters are unable\nreach your Profile",
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(fontSize: 12, color: cButtonColor),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: cButtonColor, width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text(
                                "Take Action",
                                style: AppStyle.textStyleFamilyMontserratMedium
                                    .copyWith(
                                        fontSize: 10, color: cButtonColor),
                              ),
                              SizedBox(width: 5,),
                              SvgPicture.asset(
                                Assets.arrow_right,
                                width: width * 0.03,
                                height: width * 0.03,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
