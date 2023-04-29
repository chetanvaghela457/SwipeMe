import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/Constant/colors.dart';
import 'package:swipeme/Widget/TitleWithFieldProfile.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/Widget/multilineTextField.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/screens/create_profile_screen/ExperienceModel.dart';
import 'package:swipeme/screens/preview_profile_screen/preview_profile_logic.dart';
import 'package:swipeme/screens/swiper_screen/swiper_screen_logic.dart';
import '../../Constant/appstyle.dart';

class JobPreviewDialog extends GetView<SwiperScreenLogic> {
  var onCancel;

  JobPreviewDialog({
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    final logic = Get.put(SwiperScreenLogic());
    // return Obx(() {
      return Container(
        width: w * 0.9,
        height: h * 0.8,
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
    // });
  }

  Widget profileData(double w, double h) {
    return Padding(
      padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02, top: h * 0.02),
      child: Container(
        height: h * 0.7,
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
                          "UI/UX Developer",
                          textAlign: TextAlign.center,
                          style: AppStyle.textStyleFamilyMontserratBold
                              .copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Google Inc.",
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.location_profile,
                              width: w * 0.04,
                              height: w * 0.04,
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text(
                              "Kolkata",
                              style: AppStyle.textStyleFamilyMontserratMedium
                                  .copyWith(fontSize: 13, color: cBlack),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 38,
                          backgroundColor: cBorderImageColor,
                          child: ClipOval(
                              child: Image.asset(Assets.circle_image_profile)),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: w * 0.01,
                    )
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            Assets.job_type,
                            width: w * 0.03,
                            height: w * 0.03,
                          ),
                          SizedBox(
                            width: w * 0.01,
                          ),
                          Text(
                            "Job Type - Permanent",
                            style: AppStyle
                                .textStyleFamilyMontserratSemiBold
                                .copyWith(color: cButtonColor, fontSize: 12),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          SvgPicture.asset(
                            Assets.job_package,
                            width: w * 0.03,
                            height: w * 0.03,
                          ),
                          SizedBox(
                            width: w * 0.01,
                          ),
                          Text(
                            "₹ 75 lacs p.a",
                            style: AppStyle
                                .textStyleFamilyMontserratSemiBold
                                .copyWith(color: cButtonColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  width: w * 0.8,
                  height: 0.3,
                  color: cTextFieldHint,
                ),
                SizedBox(
                  height: h * 0.009,
                ),
                Text(
                  "Who We Are",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300, color: cBlack),
                ),
                SizedBox(
                  height: h * 0.009,
                ),
                Text(
                  "Lörem ipsum rak sylynade nokrolingar. Benade onologi antide ytt perade. Disa läshund plasuning ser då tetrar. Ipsum rak sylynade nokroli Benade onologi antide ytt perade. Disa läshundytt perade. Disa läshund plasuning ser då tetrar. Ipsum rak sylynade ynade nokroli Benynade nokroli Benynade nokroli Ben",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: cTextFieldHint),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  width: w * 0.8,
                  height: 0.3,
                  color: cTextFieldHint,
                ),
                SizedBox(
                  height: h * 0.009,
                ),
                Text(
                  "About Role",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300, color: cBlack),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                Text(
                  "Lörem ipsum rak sylynade nokrolingar. Benade onologi antide ytt perade. Disa läshund plasuning ser då tetrar. Ipsum rak sylynade nokroli Benade onologi antide ytt perade. Disa läshundytt perade. Disa läshund plasuning ser då tetrar. Ipsum rak sylynade ynade nokroli Benynade nokroli Benynade nokroli Ben",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: cTextFieldHint),
                ),
                SizedBox(
                  height: h * 0.009,
                ),
                Container(
                  width: w * 0.8,
                  height: 0.3,
                  color: cTextFieldHint,
                ),
                SizedBox(
                  height: h * 0.009,
                ),
                Text(
                  "Requirements & Resposibilities",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300, color: cBlack),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                Text(
                  "Lörem ipsum rak sylynade nokro\nBenade onologi antide ytt pera\nläshund: plasuning ser då\nLörem ipsum rak sylynade nokro\nBenade onologi antide ytt pera\nläshund: plasuning ser då",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: cTextFieldHint),
                ),
                SizedBox(
                  height: h * 0.009,
                ),
                Container(
                  width: w * 0.8,
                  height: 0.3,
                  color: cTextFieldHint,
                ),
                SizedBox(
                  height: h * 0.009,
                ),
                Text(
                  "Educational Requirements",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300, color: cBlack),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                Text(
                  " Lörem ipsum rak sylynade nokro\nBenade onologi antide ytt pera\nläshund: plasuning ser då Lörem ipsum rak sylynade nokro",
                  style: AppStyle.textStyleFamilyMontserratMedium.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: cTextFieldHint),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  width: w*0.78,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cJobButtonColor,
                  ),
                  child: Center(child: Text("Posted 3 days ago",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cTextFieldHint,fontSize: 15),)),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  width: w*0.78,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cJobButtonColor,
                  ),
                  child: Center(child: Text("123 impressions",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cTextFieldHint,fontSize: 15),)),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  width: w*0.78,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cJobButtonColor,
                  ),
                  child: Center(child: Text(" 20 sviped right",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cTextFieldHint,fontSize: 15),)),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
