import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Constant/app_image.dart';
import 'package:swipeme/Widget/cvUploadDialog.dart';
import 'package:swipeme/Widget/educationDialog.dart';
import 'package:swipeme/Widget/workExperienceDialog.dart';
import 'package:swipeme/model/user_model.dart';
import 'package:swipeme/screens/create_profile_screen/ExperienceModel.dart';
import 'package:swipeme/utils/constants.dart';

class CreateProfileLogic extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController organizationController = TextEditingController();
  RxString countryController = "".obs;
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

  RxString gender = "".obs, userType = "".obs,selectedCountyCode = "+91".obs;

  RxDouble cellWidth = 80.0.obs;

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

  RxString startDateEdu = "".obs, endDateEdu = "".obs, imagePath = "".obs;

  Rx<RxList<WorkExperienceModel>> exprienceData =
      RxList<WorkExperienceModel>.empty().obs;
  Rx<RxList<EducationModel>> educationData = RxList<EducationModel>.empty().obs;
  Rx<RxList<ProjectsListModel>> portfolioData =
      RxList<ProjectsListModel>.empty().obs;
  Rx<RxList<String>> skillsData = RxList<String>.empty().obs;
  Rx<RxList<CountriesModel>> countriesData = RxList<CountriesModel>.empty().obs;

  ImagePicker picker = ImagePicker();

  Future<void> readJson() async {
    final String response = await rootBundle.loadString(Assets.countries);
    final data = await json.decode(response);

    List<CountriesModel> countriesList = List<CountriesModel>.from(
        data.map((model) => CountriesModel.fromJson(model)));

    countriesData.value.addAll(countriesList);
  }

  void imageButtonClicked() async {
    try {
      XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        imagePath.value = pickedFile.path.toString();
      }
    } catch (e) {
      print("object" + e.toString());
    }
  }

  void clearImageClicked() {
    imagePath.value = "";
  }

  RxString firstNameErr = "".obs,
      lastNameErr = "".obs,
      emailErr = "".obs,
      mobileNoErr = "".obs,
      organizationErr = "".obs,
      countryErr = "".obs,
      genderErr = "".obs,
      userTypeErr = "".obs,
      aboutSelfErr = "".obs;

  // WorkExperienceModel experienceModel = WorkExperienceModel(
  //     jobTitle: "Head Engineer",
  //     employmentType: "Head Engineer",
  //     companyName: "Pricewater CooperHouse",
  //     location: "Kolkata",
  //     startDate: "15/10/2020",
  //     endDate: "25/04/2023",
  //     description:
  //         "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidid......Read More",
  //     isCurrentlyWorkHere: false);
  //
  // WorkExperienceModel experienceModel1 = WorkExperienceModel(
  //     jobTitle: "ioS",
  //     employmentType: "employementType",
  //     companyName: "companyName",
  //     location: "location",
  //     startDate: "startDate",
  //     endDate: "endDate",
  //     description: "description",
  //     isCurrentlyWorkHere: false);
  //
  // EducationModel educationModel = EducationModel(
  //     collegeName: "The Heritage",
  //     degree: "Masters in Engineering",
  //     field: "Masters in Engineering",
  //     grade: "89",
  //     startDate: "2015",
  //     endDate: "2019",
  //     description: "description",
  //     currentlyPursuing: false);
  //
  // EducationModel educationModel1 = EducationModel(
  //     collegeName: "The Heritage",
  //     degree: "Masters in Engineering",
  //     field: "Masters in Engineering",
  //     grade: "89",
  //     startDate: "2015",
  //     endDate: "2019",
  //     description: "description",
  //     currentlyPursuing: false);

  ProjectsListModel portfolioModel = ProjectsListModel(
      heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");
  ProjectsListModel portfolioModel1 = ProjectsListModel(
      heading: "Levi’s Data Management", url: "http://www.javascriptkit.com");

  @override
  void onInit() async {
    // exprienceData.value.add(experienceModel);
    // exprienceData.value.add(experienceModel1);
    //
    // educationData.value.add(educationModel);
    // educationData.value.add(educationModel1);

    readJson();
    portfolioData.value.add(portfolioModel);
    portfolioData.value.add(portfolioModel1);
    super.onInit();
  }

  void onPublishClicked() {}

  void openExperienceDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              content: WorkExperienceDialog(
                onAdd: () async {
                  print("jobTitleController.text" + jobTitleController.text);
                  print("companyNameController.text" +
                      companyNameController.text);
                  print("locationController.text" + locationController.text);
                  print("employmentType.value" + employmentType.value);
                  print("startDate.value" + startDate.value);
                  print("endDate.value" + endDate.value);

                  if (jobTitleController.text.isNotEmpty &&
                      companyNameController.text.isNotEmpty &&
                      locationController.text.isNotEmpty &&
                      employmentType.value.isNotEmpty &&
                      startDate.value.isNotEmpty &&
                      endDate.value.isNotEmpty) {
                    WorkExperienceModel experience = WorkExperienceModel(
                        jobTitle: jobTitleController.text,
                        employmentType: employmentType.value,
                        companyName: companyNameController.text,
                        location: locationController.text,
                        startDate: startDate.value,
                        endDate: endDate.value,
                        description: descriptionController.text,
                        isCurrentlyWorkHere: isCurrentlyWorkThere.value);

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
            ));
  }

  void openEducationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              content: EducationDialog(
                onAdd: () async {
                  if (schoolClgController.text.isNotEmpty &&
                      degreeController.text.isNotEmpty &&
                      fieldController.text.isNotEmpty &&
                      gradeController.text.isNotEmpty &&
                      startDateEdu.value.isNotEmpty &&
                      endDateEdu.value.isNotEmpty) {
                    EducationModel educationModel = EducationModel(
                        collegeName: schoolClgController.value.text,
                        degree: degreeController.value.text,
                        field: fieldController.value.text,
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
            ));
  }

  void openCvUploadDialog(BuildContext context, File file) {
    String fileName = file.path.split('/').last;

    if (fileName.contains(".pdf")) {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                insetPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.zero,
                clipBehavior: Clip.antiAliasWithSaveLayer,
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
                  filePath: fileName,
                  fileSize: getFileSize(file.path, 1).toString(),
                ),
              ));
    } else {
      //File Not Support Dialog
    }
  }

  void openFileUpload(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path.toString());

      openCvUploadDialog(context, file);
    }
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
