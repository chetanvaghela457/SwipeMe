import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/Constant/colors.dart';
import 'package:swipeme/Widget/TitleWithFieldProfile.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/Widget/multilineTextField.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/screens/create_profile_screen/ExperienceModel.dart';
import 'package:swipeme/screens/preview_profile_screen/preview_profile_logic.dart';
import '../../Constant/appstyle.dart';

class ProfilePreviewDialog extends GetView<PreviewProfileScreenLogic> {
  var onCancel;

  ProfilePreviewDialog({
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.8,
      height: h * 0.8,
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: onCancel,
                  child: Image.asset(
                    Assets.image_close,
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            ),
            profileData(w, h)
          ],
        ),
      ),
    );
  }


  Widget profileData(double w, double h) {
    return Padding(
      padding: EdgeInsets.only(
          left: w * 0.02, right: w * 0.02, top: h * 0.02, bottom: h * 0.02),
      child: Container(
        height: h*0.71,
        child: Scrollbar(
          radius: Radius.circular(1),
          trackVisibility: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
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
                  "Lörem ipsum rak sylynade nokrolingar. Benade onologi antide ytt perade. Disa läshund plasuning ser då tetrar. Ipsum rak sylynade nokroli Benade onologi antide ytt perade. Disa läshundytt perade. Disa läshund plasuning ser då tetrar. Ipsum rak sylynade ynade nokroli Benynade nokroli Benynade nokroli Ben",
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
                  "Lörem ipsum rak sylynade nokro\nBenade onologi antide ytt pera\nläshund: plasuning ser då\nLörem ipsum rak sylynade nokro\nBenade onologi antide ytt pera\nläshund: plasuning ser då",
                  style: AppStyle.textStyleFamilyMontserratMedium
                      .copyWith(fontSize: 11, fontWeight: FontWeight.w300,color: cTextFieldHint),
                ),
                SizedBox(height: h*0.009,),
                Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
                SizedBox(height: h*0.009,),
                Text(
                  "Work Experience (Previous)",
                  style: AppStyle.textStyleFamilyMontserratMedium
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
                ),
                SizedBox(height: h*0.005,),
                listExperience(w,h),
                SizedBox(height: h*0.009,),
                Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
                SizedBox(height: h*0.009,),
                Text(
                  "Education",
                  style: AppStyle.textStyleFamilyMontserratMedium
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
                ),
                SizedBox(height: h*0.005,),
                listEducation(w,h),
                SizedBox(height: h*0.009,),
                Container(width: w*0.65,height: 0.3,color: cTextFieldHint,),
                SizedBox(height: h*0.009,),
                Text(
                  "Portfolio (previous)",
                  style: AppStyle.textStyleFamilyMontserratMedium
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w300,color: cBlack),
                ),
                SizedBox(height: h*0.005,),
                listPortfolio(w,h)
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget listExperience(double width, double height) {
    return controller.exprienceData.value.isNotEmpty
        ? Container(
      margin: EdgeInsets.only(
          top: height * 0.01,
          bottom: height * 0.01),
      width: width * 0.65,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = controller.exprienceData.value[index];

          return experienceItem(width, height, index, item);
        },
        itemCount: controller.exprienceData.value.length,
      ),
    )
        : SizedBox();
  }


  Widget listPortfolio(double width, double height) {
    return controller.portfolioData.value.isNotEmpty
        ? Container(
      margin: EdgeInsets.only(
          top: height * 0.01,
          bottom: height * 0.01),
      width: width * 0.65,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = controller.portfolioData.value[index];

          return portfolioItem(width, height, index, item);
        },
        itemCount: controller.portfolioData.value.length,
      ),
    )
        : SizedBox();
  }


  Widget listEducation(double width, double height) {
    return controller.educationData.value.isNotEmpty
        ? Container(
      margin: EdgeInsets.only(
          top: height * 0.01,
          bottom: height * 0.01),
      width: width * 0.65,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = controller.educationData.value[index];

          return educationItem(width, height, index, item);
        },
        itemCount: controller.educationData.value.length,
      ),
    )
        : SizedBox();
  }

  Widget portfolioItem(
      double width, double height, int index, PortfolioModel model) {
    return Container(
      key: ValueKey(model),
      margin: EdgeInsets.only(
          top: height * 0.006,
          bottom: height * 0.006),
      decoration: BoxDecoration(
        color: cPortfolioColor,
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
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.heading,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 15),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.url,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cYearEducationColor, fontSize: 11),
                    )),
                SizedBox(
                  height: height * 0.001,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget experienceItem(
      double width, double height, int index, ExperienceModel model) {
    return Container(
      key: ValueKey(model),
      margin: EdgeInsets.only(
          top: height * 0.006,
          bottom: height * 0.006),
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
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.companyName,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 15),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.jobTitle,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 13),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.startDate + model.endDate,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 11),
                    )),
                SizedBox(
                  height: height * 0.008,
                ),
                Container(
                    width: width * 0.6,
                    child: Text(
                      "Work & Achievements",
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cTextFieldHint, fontSize: 11),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.description,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cTextFieldHint, fontSize: 11),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }


  Widget educationItem(
      double width, double height, int index, EducationModel model) {
    return Container(
      key: ValueKey(model),
      margin: EdgeInsets.only(
          top: height * 0.006,
          bottom: height * 0.006),
      decoration: BoxDecoration(
        color: cEducationColor,
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
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.schoolCollageName,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 15),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.deegree,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 13),
                    )),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                    width: width * 0.6,
                    child: Text(
                      model.startDate + " - "+ model.endDate,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cYearEducationColor, fontSize: 12),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
