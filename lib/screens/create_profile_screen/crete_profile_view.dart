import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/Widget/CornerPlusButton.dart';
import 'package:swipeme/Widget/TitleWithFieldProfile.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/create_profile_screen/ExperienceModel.dart';
import 'package:swipeme/screens/create_profile_screen/create_profile_logic.dart';

class CreateProfileView extends GetView<CreateProfileLogic> {
  const CreateProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: cBackgroundPrimary,
        body: SingleChildScrollView(
          child: Obx(() {
            return Container(
              color: cBackgroundPrimary,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.08,
                    ),
                    Text(
                      "Create your Profile",
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
                      height: h * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: w * 0.21,
                          width: w * 0.21,
                          child: Stack(
                            clipBehavior: Clip.none,
                            fit: StackFit.expand,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: cBorderImageColor,
                                child: ClipOval(
                                    child: Image.asset(
                                        Assets.circle_image_profile)),
                              ),
                              Positioned(
                                  bottom: 50,
                                  right: -35,
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 2.0,
                                    child: Image.asset(
                                      Assets.plus_icon,
                                      width: 25,
                                      height: 25,
                                    ),
                                    shape: CircleBorder(),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w * 0.05,
                        ),
                        Column(
                          children: [
                            Text(
                              "Upload Profile Picture",
                              style: AppStyle.textStyleFamilyMontserratMedium
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: cBlack),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "Click on the plus button to\nbrowse picture",
                              style: AppStyle.textStyleFamilyMontserratMedium
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: cTextFieldHint),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: false,
                      controller: controller.firstNameController,
                      width: w * 0.8,
                      hintText: "Name",
                      mainTxtTitle: "First Name",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: false,
                      controller: controller.lastNameController,
                      width: w * 0.8,
                      hintText: "Agarwal",
                      mainTxtTitle: "Last Name",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: false,
                      controller: controller.emailController,
                      width: w * 0.8,
                      hintText: "ex.naman@gmail.com",
                      mainTxtTitle: "Email",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: false,
                      controller: controller.mobileNoController,
                      width: w * 0.8,
                      hintText: "9000000000",
                      mainTxtTitle: "Mobile No.",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: false,
                      controller: controller.organizationController,
                      width: w * 0.8,
                      hintText: "ex. Pricewater CooperHouse",
                      mainTxtTitle: "Organization",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: false,
                      controller: controller.countryController,
                      width: w * 0.8,
                      hintText: "India",
                      mainTxtTitle: "Country",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: true,
                      controller: controller.firstNameController,
                      width: w * 0.8,
                      hintText: "Click to choose",
                      mainTxtTitle: "Gender",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: true,
                      controller: controller.firstNameController,
                      width: w * 0.8,
                      hintText: "Click to choose",
                      mainTxtTitle: "User Type",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    Container(
                      width: w * 0.8,
                      child: Row(
                        children: [
                          Text(
                            "Work Experience",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(color: cBlack, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    CornerPlusButton(
                      isEditableField: false,
                      width: w * 0.8,
                      hintText: "Add experience",
                      onTap: () {
                        controller.openExperienceDialog();
                      },
                    ),
                    listExperience(w, h),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    Container(
                      width: w * 0.8,
                      child: Row(
                        children: [
                          Text(
                            "Education",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(color: cBlack, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    CornerPlusButton(
                      isEditableField: false,
                      width: w * 0.8,
                      hintText: "Add qualification",
                      onTap: () {
                        controller.openEducationDialog();
                      },
                    ),
                    listEducation(w,h),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    Container(
                      width: w * 0.8,
                      child: Row(
                        children: [
                          Text(
                            "Skills",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(color: cBlack, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    CornerPlusButton(
                      isEditableField: false,
                      width: w * 0.8,
                      hintText: "Add Skills",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    Container(
                      width: w * 0.8,
                      child: Row(
                        children: [
                          Text(
                            "Projects / Portfolio",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(color: cBlack, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    CornerPlusButton(
                      isEditableField: false,
                      width: w * 0.8,
                      hintText: "Add Skills",
                    ),

                    CornerPlusButton(
                      isEditableField: true,
                      width: w * 0.8,
                      hintText: "Add Url Here",
                    ),
                    listPortfolio(w,h),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: false,
                      lines: 5,
                      controller: controller.aboutYourSelfController,
                      width: w * 0.8,
                      hintText: "Professional",
                      mainTxtTitle: "About Self",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: false,
                      isDropDown: false,
                      controller: controller.currentCTCController,
                      width: w * 0.8,
                      hintText: "ex. 60,00,000 p.a",
                      mainTxtTitle: "Current CTC",
                    ),
                    SizedBox(
                      height: h * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: w * 0.1,
                        ),
                        Text(
                          "Social Verification",
                          style: AppStyle.textStyleFamilyMontserratBold
                              .copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: false,
                      isDropDown: false,
                      controller: controller.linkedInController,
                      width: w * 0.8,
                      hintText: "Add Url Here",
                      mainTxtTitle: "LinkedIn",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: false,
                      isDropDown: false,
                      controller: controller.facebookController,
                      width: w * 0.8,
                      hintText: "Add Url Here",
                      mainTxtTitle: "Facebook",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: false,
                      isDropDown: false,
                      controller: controller.instagramController,
                      width: w * 0.8,
                      hintText: "Add Url Here",
                      mainTxtTitle: "Instagram",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: false,
                      isDropDown: false,
                      controller: controller.linkedInController,
                      width: w * 0.8,
                      hintText: "Add Url Here",
                      mainTxtTitle: "LinkedIn",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: false,
                      isDropDown: false,
                      controller: controller.twitterController,
                      width: w * 0.8,
                      hintText: "Add Url Here",
                      mainTxtTitle: "Twitter",
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: false,
                      isDropDown: false,
                      controller: controller.gitHubController,
                      width: w * 0.8,
                      hintText: "Add Url Here",
                      mainTxtTitle: "GitHub",
                    ),
                    SizedBox(
                      height: h * 0.07,
                    ),
                    CButtonBorder(
                      height: 50,
                      width: w * 0.80,
                      onTap: () {
                        // Get.toNamed(AppRoutes.createProfileScreen);
                      },
                      child: Center(
                        child: Text("Preview Profile",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(color: cBlack, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    CButton(
                      height: 50,
                      width: w * 0.80,
                      onTap: () {
                        // Get.toNamed(AppRoutes.createProfileScreen);
                      },
                      child: Center(
                        child: Text("Publish",
                            style: AppStyle.textStyleFamilyMontserratBold
                                .copyWith(
                                    color: cWhite,
                                    letterSpacing: 1,
                                    fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Container(
                      width: w * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: w * 0.1,
                            height: 1,
                            color: cTextFieldHint,
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          Text(
                            "Or auto populate data with CV",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(fontSize: 12, color: cBlack),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          Container(
                            width: w * 0.1,
                            height: 0.5,
                            color: cTextFieldHint,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    CButtonBorder(
                      height: 50,
                      width: w * 0.80,
                      onTap: () {
                        // Get.toNamed(AppRoutes.createProfileScreen);
                      },
                      child: Center(
                        child: Text("Upload CV",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(color: cBlack, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.08,
                    ),
                  ],
                ),
              ),
            );
          }),
        ));
  }

  Widget listExperience(double width, double height) {
    return controller.exprienceData.value.isNotEmpty
        ? Container(
            margin: EdgeInsets.only(
                left: width * 0.1,
                right: width * 0.1,
                top: height * 0.01,
                bottom: height * 0.01),
            width: width * 0.8,
            child: ReorderableListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = controller.exprienceData.value[index];

                return experienceItem(width, height, index, item);
              },
              itemCount: controller.exprienceData.value.length,
              onReorder: (oldIndex, newIndex) {
                final index = newIndex > oldIndex ? newIndex - 1 : newIndex;

                final experienceData =
                    controller.exprienceData.value.removeAt(oldIndex);
                controller.exprienceData.value.insert(index, experienceData);
              },
            ),
          )
        : SizedBox();
  }


  Widget listPortfolio(double width, double height) {
    return controller.portfolioData.value.isNotEmpty
        ? Container(
      margin: EdgeInsets.only(
          left: width * 0.1,
          right: width * 0.1,
          top: height * 0.01,
          bottom: height * 0.01),
      width: width * 0.8,
      child: ReorderableListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = controller.portfolioData.value[index];

          return portfolioItem(width, height, index, item);
        },
        itemCount: controller.portfolioData.value.length,
        onReorder: (oldIndex, newIndex) {
          final index = newIndex > oldIndex ? newIndex - 1 : newIndex;

          final portfolioData =
          controller.portfolioData.value.removeAt(oldIndex);
          controller.portfolioData.value.insert(index, portfolioData);
        },
      ),
    )
        : SizedBox();
  }


  Widget listEducation(double width, double height) {
    return controller.educationData.value.isNotEmpty
        ? Container(
      margin: EdgeInsets.only(
          left: width * 0.1,
          right: width * 0.1,
          top: height * 0.01,
          bottom: height * 0.01),
      width: width * 0.8,
      child: ReorderableListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = controller.educationData.value[index];

          return educationItem(width, height, index, item);
        },
        itemCount: controller.educationData.value.length,
        onReorder: (oldIndex, newIndex) {
          final index = newIndex > oldIndex ? newIndex - 1 : newIndex;

          final educationData =
          controller.educationData.value.removeAt(oldIndex);
          controller.educationData.value.insert(index, educationData);
        },
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
            Image.asset(
              Assets.reorder_item,
              width: 15,
              height: 15,
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: width * 0.55,
                        child: Text(
                          model.heading,
                          style: AppStyle.textStyleFamilyMontserratSemiBold
                              .copyWith(color: cWhite, fontSize: 15),
                        )),
                    Image.asset(
                      Assets.edit_icon,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Image.asset(
                      Assets.delete_icon,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      model.url,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cYearEducationColor, fontSize: 12),
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
            Image.asset(
              Assets.reorder_item,
              width: 15,
              height: 15,
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: width * 0.55,
                        child: Text(
                          model.companyName,
                          style: AppStyle.textStyleFamilyMontserratSemiBold
                              .copyWith(color: cWhite, fontSize: 15),
                        )),
                    Image.asset(
                      Assets.edit_icon,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Image.asset(
                      Assets.delete_icon,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      model.jobTitle,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 13),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      model.startDate + model.endDate,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cTextFieldHint, fontSize: 12),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      model.location,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cTextFieldHint, fontSize: 12),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      "Work & Achievements",
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 15),
                    )),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      model.description,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cTextFieldHint, fontSize: 10),
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
            Image.asset(
              Assets.reorder_item,
              width: 15,
              height: 15,
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: width * 0.55,
                        child: Text(
                          model.schoolCollageName,
                          style: AppStyle.textStyleFamilyMontserratSemiBold
                              .copyWith(color: cWhite, fontSize: 15),
                        )),
                    Image.asset(
                      Assets.edit_icon,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Image.asset(
                      Assets.delete_icon,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.003,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      model.deegree,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cWhite, fontSize: 13),
                    )),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                    width: width * 0.66,
                    child: Text(
                      model.startDate + " - "+ model.endDate,
                      style: AppStyle.textStyleFamilyMontserratSemiBold
                          .copyWith(color: cYearEducationColor, fontSize: 12),
                    )),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
