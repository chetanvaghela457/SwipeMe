import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Widget/profilePreviewDialog.dart';
import 'package:swipeme/screens/create_profile_screen/ExperienceModel.dart';

class PreviewProfileScreenLogic extends GetxController {

  Rx<RxList<ExperienceModel>> exprienceData =
      RxList<ExperienceModel>.empty().obs;
  Rx<RxList<EducationModel>> educationData = RxList<EducationModel>.empty().obs;
  Rx<RxList<PortfolioModel>> portfolioData = RxList<PortfolioModel>.empty().obs;

  ExperienceModel experienceModel = ExperienceModel(
      jobTitle: "Head Engineer",
      employementType: "Head Engineer",
      companyName: "Pricewater CooperHouse",
      location: "Kolkata",
      startDate: "15/10/2020",
      endDate: "25/04/2023",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidid......Read More",
      currentlyWorkHere: false);

  ExperienceModel experienceModel1 = ExperienceModel(
      jobTitle: "ioS",
      employementType: "employementType",
      companyName: "companyName",
      location: "location",
      startDate: "startDate",
      endDate: "endDate",
      description: "description",
      currentlyWorkHere: false);

  EducationModel educationModel = EducationModel(
      schoolCollageName: "The Heritage",
      deegree: "Masters in Engineering",
      fieldOfStudy: "Masters in Engineering",
      grade: "89",
      startDate: "2015",
      endDate: "2019",
      description: "description",
      currentlyPursuing: false);

  EducationModel educationModel1 = EducationModel(
      schoolCollageName: "The Heritage",
      deegree: "Masters in Engineering",
      fieldOfStudy: "Masters in Engineering",
      grade: "89",
      startDate: "2015",
      endDate: "2019",
      description: "description",
      currentlyPursuing: false);

  PortfolioModel portfolioModel = PortfolioModel(heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");
  PortfolioModel portfolioModel1 = PortfolioModel(heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");


  @override
  void onInit() {
    exprienceData.value.add(experienceModel);
    exprienceData.value.add(experienceModel1);

    educationData.value.add(educationModel);
    educationData.value.add(educationModel1);

    portfolioData.value.add(portfolioModel);
    portfolioData.value.add(portfolioModel1);
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void openPublishedProfileScreen() {
    Get.toNamed(AppRoutes.publishedProfileScreen);
  }

  void openProfilePreviewDialog() {
    Get.defaultDialog(
      title: "",
      titlePadding: EdgeInsets.zero,
      radius: 5.0,
      content:  ProfilePreviewDialog(
        onCancel: (){
          Get.back();
          debugPrint('onTapDeny : ');
        },
      ),
    );
  }
}
