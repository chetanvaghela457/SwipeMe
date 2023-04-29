import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Widget/profilePreviewDialog.dart';
import 'package:swipeme/Widget/workExperienceDialog.dart';
import 'package:swipeme/model/user_model.dart';
import 'package:swipeme/screens/create_profile_screen/ExperienceModel.dart';

class PreviewProfileScreenLogic extends GetxController {

  Rx<RxList<WorkExperienceModel>> exprienceData = RxList<WorkExperienceModel>.empty().obs;
  Rx<RxList<EducationModel>> educationData = RxList<EducationModel>.empty().obs;
  Rx<RxList<ProjectsListModel>> portfolioData = RxList<ProjectsListModel>.empty().obs;

  WorkExperienceModel experienceModel = WorkExperienceModel(
      jobTitle: "Head Engineer",
      employmentType: "Head Engineer",
      companyName: "Pricewater CooperHouse",
      location: "Kolkata",
      startDate: "15/10/2020",
      endDate: "25/04/2023",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidid......Read More",
      isCurrentlyWorkHere: false);

  WorkExperienceModel experienceModel1 = WorkExperienceModel(
      jobTitle: "ioS",
      employmentType: "employementType",
      companyName: "companyName",
      location: "location",
      startDate: "startDate",
      endDate: "endDate",
      description: "description",
      isCurrentlyWorkHere: false);

  EducationModel educationModel = EducationModel(
      collegeName: "The Heritage",
      degree: "Masters in Engineering",
      field: "Masters in Engineering",
      grade: "89",
      startDate: "2015",
      endDate: "2019",
      description: "description",
      currentlyPursuing: false);

  EducationModel educationModel1 = EducationModel(
      collegeName: "The Heritage",
      degree: "Masters in Engineering",
      field: "Masters in Engineering",
      grade: "89",
      startDate: "2015",
      endDate: "2019",
      description: "description",
      currentlyPursuing: false);

  ProjectsListModel portfolioModel = ProjectsListModel(heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");
  ProjectsListModel portfolioModel1 = ProjectsListModel(heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");


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

  void openProfilePreviewDialog(BuildContext context) {

    showDialog(context: context, builder: (_) => AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      content: ProfilePreviewDialog(
        onCancel: (){
          Get.back();
          debugPrint('onTapDeny : ');
        },
      ),
    ));
    /*Get.defaultDialog(
      title: "",
      titlePadding: EdgeInsets.zero,
      radius: 5.0,
      content:  ProfilePreviewDialog(
        onCancel: (){
          Get.back();
          debugPrint('onTapDeny : ');
        },
      ),
    );*/
  }
}
