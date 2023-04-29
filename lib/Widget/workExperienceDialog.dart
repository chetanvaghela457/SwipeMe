import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:intl/intl.dart';
import 'package:swipeme/Constant/colors.dart';
import 'package:swipeme/Widget/CustomDropdown.dart';
import 'package:swipeme/Widget/TitleWithFieldProfile.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/Widget/multilineTextField.dart';
import 'package:swipeme/constant/app_constant.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/screens/create_profile_screen/create_profile_logic.dart';
import '../../Constant/appstyle.dart';

class WorkExperienceDialog extends GetView<CreateProfileLogic> {
  var onCancel, onAdd;

  WorkExperienceDialog({
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
    // return Obx(() {
    return Container(
      width: w * 0.9,
      height: h * 0.85,
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(5),
      ),
      child: SingleChildScrollView(
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
              Text(
                "Work Experience",
                textAlign: TextAlign.center,
                style: AppStyle.textStyleFamilyMontserratBold
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: h * 0.007,
              ),
              Text(
                "Add Details Below",
                textAlign: TextAlign.center,
                style: AppStyle.textStyleFamilyMontserratMedium
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: h * 0.012,
              ),
              TitleWithFieldProfile(
                isCompalsory: true,
                isDropDown: false,
                controller: controller.jobTitleController,
                hintText: "Head Engineer",
                mainTxtTitle: "Job Title",
              ),
              SizedBox(
                height: h * 0.012,
              ),
              Container(
                width: w * 0.8,
                child: Row(
                  children: [
                    Text(
                      "Employment Type",
                      style: AppStyle.textStyleFamilyMontserratMedium
                          .copyWith(color: cBlack, fontSize: 13),
                    ),
                    Text(
                      "*",
                      style: AppStyle.textStyleFamilyMontserratMedium
                          .copyWith(color: cStarColor, fontSize: 13),
                    )
                  ],
                ),
              ),
              employmentTypeDropDown(w, h),
              SizedBox(
                height: h * 0.012,
              ),
              TitleWithFieldProfile(
                isCompalsory: true,
                isDropDown: false,
                controller: controller.companyNameController,
                hintText: "Pricewater CooperHouse",
                mainTxtTitle: "Company Name",
              ),
              SizedBox(
                height: h * 0.012,
              ),
              TitleWithFieldProfile(
                isCompalsory: true,
                isDropDown: false,
                controller: controller.locationController,
                hintText: "Kolkata",
                mainTxtTitle: "Location",
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
                    width: w * 0.38,
                    // controller: controller.countryController,
                    hintText: controller.startDate.value.toString(),
                    mainTxtTitle: "Start Date",
                    onTap: () {
                      datePicker();
                    },
                  ),
                  TitleWithFieldProfile(
                    isCompalsory: true,
                    isDropDown: true,
                    width: w * 0.38,
                    // controller: controller.countryController,
                    hintText: controller.endDate.value.toString(),
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
                          .copyWith(color: cBlack, fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.012,
              ),
              MultiLineTextField(
                  controller: controller.descriptionController,
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
                    width: (w * 0.8) / 2,
                    onTap: onCancel,
                    child: Center(
                      child: Text("Cancel",
                          style: AppStyle.textStyleFamilyMontserratMedium
                              .copyWith(color: cBlack, fontSize: 15)),
                    ),
                  ),
                  CButton(
                    height: 40,
                    width: (w * 0.8) / 2,
                    onTap: onAdd,
                    child: Center(
                      child: Text("Add",
                          style: AppStyle.textStyleFamilyMontserratBold
                              .copyWith(
                                  color: cWhite,
                                  letterSpacing: 1,
                                  fontSize: 15)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    // });
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
      controller.startDate.value = DateFormat('dd/MM/yyyy')
          .format(_date)
          .toString(); //change date format on your need
      print(controller.startDate.value.toString());
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
      controller.endDate.value = DateFormat('dd/MM/yyyy')
          .format(_date)
          .toString(); //change date format on your need
      print(controller.endDate.value.toString());
    }
  }

  Widget employmentTypeDropDown(double w, double h) {
    return Obx(() {
      return Container(
        child: CustomDropdown<int>(
          onChange: (int index) {
            controller.employmentType.value = Const.employmentType[index];
          },
          dropdownButtonStyle: DropdownButtonStyle(
            width: w * 0.8,
            height: 50,
            elevation: 1,
            backgroundColor: Colors.white,
            primaryColor: Colors.black87,
          ),
          hideIcon: true,
          dropdownStyle: DropdownStyle(
              padding: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(7))),
          items: Const.employmentType
              .asMap()
              .entries
              .map(
                (item) => DropdownItem<int>(
                    value: item.key + 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.value,
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(color: cBlack, fontSize: 13),
                      ),
                    )),
              )
              .toList(),
          child: Container(
            width: w * 0.8,
            height: 40,
            decoration: BoxDecoration(
              color: cTextFieldBackground,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    controller.employmentType.value.isNotEmpty
                        ? controller.employmentType.value
                        : "Click to Choose",
                    style: AppStyle.textStyleFamilyMontserratMedium
                        .copyWith(color: cTextFieldHint, fontSize: 13),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: SvgPicture.asset(
                    Assets.dropDown,
                    width: 8,
                    height: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
