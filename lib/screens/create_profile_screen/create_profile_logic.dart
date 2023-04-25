import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Widget/cvUploadDialog.dart';
import 'package:swipeme/Widget/educationDialog.dart';
import 'package:swipeme/Widget/workExperienceDialog.dart';
import 'package:swipeme/screens/create_profile_screen/ExperienceModel.dart';

class CreateProfileLogic extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController organizationController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController aboutYourSelfController = TextEditingController();
  TextEditingController currentCTCController = TextEditingController();
  TextEditingController linkedInController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController gitHubController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController headingController = TextEditingController();
  TextEditingController urlController = TextEditingController();


  RxString gender = "".obs, userType = "".obs;
  // RxString dob = "".obs;

  //Experience Dialog Controller
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  RxString employmentType = "".obs, startDate = "".obs, endDate = "".obs;
  RxBool isCurrentlyWorkThere = false.obs, isCurrentlyPursuing = false.obs;

  //Education Dialog Controller
  TextEditingController schoolClgController = TextEditingController();
  TextEditingController degreeController = TextEditingController();
  TextEditingController fieldController = TextEditingController();
  TextEditingController gradeController = TextEditingController();
  TextEditingController descriptionEduController = TextEditingController();

  RxString startDateEdu = "".obs, endDateEdu = "".obs;

  Rx<RxList<ExperienceModel>> exprienceData =
      RxList<ExperienceModel>.empty().obs;
  Rx<RxList<EducationModel>> educationData = RxList<EducationModel>.empty().obs;
  Rx<RxList<PortfolioModel>> portfolioData = RxList<PortfolioModel>.empty().obs;
  Rx<RxList<String>> skillsData = RxList<String>.empty().obs;

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

  PortfolioModel portfolioModel = PortfolioModel(
      heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");
  PortfolioModel portfolioModel1 = PortfolioModel(
      heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");

  @override
  void onInit() async {
    exprienceData.value.add(experienceModel);
    exprienceData.value.add(experienceModel1);

    educationData.value.add(educationModel);
    educationData.value.add(educationModel1);

    portfolioData.value.add(portfolioModel);
    portfolioData.value.add(portfolioModel1);
    super.onInit();
  }

  void openExperienceDialog() {
    Get.defaultDialog(
      title: "",
      titlePadding: EdgeInsets.all(0),
      radius: 5.0,
      content: Expanded(
        child: WorkExperienceDialog(
          onAdd: () async {

            print("jobTitleController.text"+jobTitleController.text);
            print("companyNameController.text"+companyNameController.text);
            print("locationController.text"+locationController.text);
            print("employmentType.value"+employmentType.value);
            print("startDate.value"+startDate.value);
            print("endDate.value"+endDate.value);

            if (jobTitleController.text.isNotEmpty &&
                companyNameController.text.isNotEmpty &&
                locationController.text.isNotEmpty &&
                employmentType.value.isNotEmpty &&
                startDate.value.isNotEmpty &&
                endDate.value.isNotEmpty) {
              ExperienceModel experience = ExperienceModel(
                  jobTitle: jobTitleController.text,
                  employementType: employmentType.value,
                  companyName: companyNameController.text,
                  location: locationController.text,
                  startDate: startDate.value,
                  endDate: endDate.value,
                  description: descriptionController.text,
                  currentlyWorkHere: isCurrentlyWorkThere.value);

              exprienceData.value.add(experience);
              jobTitleController.clear();
              employmentType = "".obs;
              companyNameController.clear();
              locationController.clear();
              descriptionController.clear();
              startDate = "".obs;
              endDate = "".obs;
              isCurrentlyWorkThere = false.obs;

              debugPrint('Add Data : ');
            } else {
              debugPrint('Not Added : ');
            }

            Get.back();
            // CheckPremission();
          },
          onCancel: () {
            Get.back();
            debugPrint('onTapDeny : ');
          },
        ),
      ),
    );
  }

  void openEducationDialog() {
    Get.defaultDialog(
      title: "",
      titlePadding: EdgeInsets.zero,
      radius: 5.0,
      content: Expanded(
        child: EducationDialog(
          onAdd: () async {
            if (schoolClgController.text.isNotEmpty &&
                degreeController.text.isNotEmpty &&
                fieldController.text.isNotEmpty &&
                gradeController.text.isNotEmpty &&
                startDateEdu.value.isNotEmpty &&
                endDateEdu.value.isNotEmpty) {
              EducationModel educationModel = EducationModel(
                  schoolCollageName: schoolClgController.value.text,
                  deegree: degreeController.value.text,
                  fieldOfStudy: fieldController.value.text,
                  grade: gradeController.value.text,
                  startDate: startDateEdu.value,
                  endDate: endDateEdu.value,
                  description: descriptionEduController.value.text,
                  currentlyPursuing: isCurrentlyPursuing.value);

              educationData.value.add(educationModel);
              schoolClgController.clear();
              degreeController.clear();
              fieldController.clear();
              gradeController.clear();
              descriptionEduController.clear();
              startDateEdu = "".obs;
              endDateEdu = "".obs;
              isCurrentlyPursuing = false.obs;
            } else {}
            Get.back();
            // CheckPremission();
          },
          onCancel: () {
            Get.back();
            debugPrint('onTapDeny : ');
          },
        ),
      ),
    );
  }

  void openCvUploadDialog() {
    Get.defaultDialog(
      title: "",
      titlePadding: EdgeInsets.zero,
      radius: 5.0,
      content: CvUploadDialog(
        onAdd: () async {
          debugPrint('onTapAllow : ');
          Get.back();
          // CheckPremission();
        },
        onCancel: () {
          Get.back();
          debugPrint('onTapDeny : ');
        },
      ),
    );
  }

  void openPreviewProfileScreen() {
    Get.toNamed(AppRoutes.previewProfileScreen);
  }

  void openPublishedProfileScreen() {
    Get.toNamed(AppRoutes.publishedProfileScreen);
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
}
