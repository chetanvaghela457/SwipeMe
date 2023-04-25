import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:intl/intl.dart';
import 'package:swipeme/Constant/colors.dart';
import 'package:swipeme/Widget/TitleWithFieldProfile.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/Widget/multilineTextField.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/screens/create_profile_screen/create_profile_logic.dart';
import '../../Constant/appstyle.dart';

class EducationDialog extends GetView<CreateProfileLogic> {
  var onCancel, onAdd;

  EducationDialog({
    this.onCancel,
    this.onAdd,
  });

  DateTime? selectedDate;
  DateTime _date = DateTime.now();
  BuildContext? contextMain;

  @override
  Widget build(BuildContext context) {
    contextMain = context;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Obx(() {
      return Container(
        width: w * 0.8,
        height: h * 0.75,
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(5),
        ),
        child: SingleChildScrollView(
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
                Text(
                  "Education",
                  textAlign: TextAlign.center,
                  style: AppStyle.textStyleFamilyMontserratBold
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: h * 0.007,
                ),
                Text(
                  "Add Details Below",
                  textAlign: TextAlign.center,
                  style: AppStyle.textStyleFamilyMontserratMedium
                      .copyWith(fontSize: 13, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: h * 0.012,
                ),
                TitleWithFieldProfile(
                  isCompalsory: true,
                  isDropDown: false,
                  controller: controller.schoolClgController,
                  hintText: "Naman",
                  mainTxtTitle: "School/College",
                ),
                SizedBox(
                  height: h * 0.012,
                ),
                TitleWithFieldProfile(
                  isCompalsory: true,
                  isDropDown: false,
                  controller: controller.degreeController,
                  hintText: "Naman",
                  mainTxtTitle: "Degree",
                ),
                SizedBox(
                  height: h * 0.012,
                ),
                TitleWithFieldProfile(
                  isCompalsory: false,
                  isDropDown: false,
                  controller: controller.fieldController,
                  hintText: "Naman",
                  mainTxtTitle: "Field of Study",
                ),
                SizedBox(
                  height: h * 0.012,
                ),
                TitleWithFieldProfile(
                  isCompalsory: true,
                  isDropDown: false,
                  controller: controller.gradeController,
                  hintText: "Grade",
                  mainTxtTitle: "Grade",
                ),
                SizedBox(
                  height: h * 0.012,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: true,
                      width: w * 0.33,
                      // controller: controller.countryController,
                      hintText: controller.startDateEdu.value.toString(),
                      mainTxtTitle: "Start Date",
                      onTap: () {
                        datePicker();
                      },
                    ),
                    TitleWithFieldProfile(
                      isCompalsory: true,
                      isDropDown: true,
                      width: w * 0.33,
                      // controller: controller.countryController,
                      hintText: controller.endDateEdu.value.toString(),
                      mainTxtTitle: "End Date",
                      onTap: () {
                        datePickerEndDate();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.012,
                ),
                Container(
                  width: w * 0.8,
                  child: Row(
                    children: [
                      Text(
                        "Description (Achievements & Resposibilities)",
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(color: cBlack, fontSize: 13),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.012,
                ),
                MultiLineTextField(
                    controller: controller.descriptionEduController,
                    hintText:
                    "Lörem ipsum rak sylynade nokrolingar.\nBenade onologi antide ytt perade. Disa\nläshund: plasuning ser då tetrar. ",
                    height: h * 0.10,
                    textInputType: TextInputType.multiline,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r" "))
                    ],
                    textInputAction: TextInputAction.next),
                SizedBox(
                  height: h * 0.012,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CButtonBorder(
                      height: 40,
                      width: w * 0.35,
                      onTap: onCancel,
                      child: Center(
                        child: Text("Cancel",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(color: cBlack, fontSize: 15)),
                      ),
                    ),
                    CButton(
                      height: 40,
                      width: w * 0.35,
                      onTap: onAdd,
                      child: Center(
                        child: Text("Add",
                            style: AppStyle.textStyleFamilyMontserratBold
                                .copyWith(
                                color: cWhite, letterSpacing: 1, fontSize: 15)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  datePicker() async {
    selectedDate = await showDatePicker(
      context: contextMain!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      helpText: 'Campaign Date Picker'.toUpperCase(),
    );
    if (selectedDate != null && selectedDate != _date) {
      _date = selectedDate!;
      controller.startDateEdu.value = DateFormat('dd/MM/yyyy')
          .format(_date)
          .toString(); //change date format on your need
      print(controller.startDateEdu.value.toString());
    }
  }

  datePickerEndDate() async {
    selectedDate = await showDatePicker(
      context: contextMain!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      helpText: 'Campaign Date Picker'.toUpperCase(),
    );
    if (selectedDate != null && selectedDate != _date) {
      _date = selectedDate!;
      controller.endDateEdu.value = DateFormat('dd/MM/yyyy')
          .format(_date)
          .toString(); //change date format on your need
      print(controller.endDateEdu.value.toString());
    }
  }
}
