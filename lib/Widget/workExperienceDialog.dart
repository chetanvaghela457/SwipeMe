import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swipeme/Constant/colors.dart';
import 'package:swipeme/Widget/TitleWithFieldProfile.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/constant/app_image.dart';
import '../../Constant/appstyle.dart';

class WorkExperienceDialog extends StatelessWidget {
  var onCancel, onAdd;

  WorkExperienceDialog({
    this.onCancel,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.8,
      height: h * 0.75,
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
            Text(
              "Work Experience",
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
              // controller: controller.countryController,
              hintText: "Head Engineer",
              mainTxtTitle: "Job Title",
            ),
            SizedBox(
              height: h * 0.012,
            ),
            TitleWithFieldProfile(
              isCompalsory: true,
              isDropDown: true,
              // controller: controller.countryController,
              hintText: "Full Time",
              mainTxtTitle: "Employment Type",
            ),
            SizedBox(
              height: h * 0.012,
            ),
            TitleWithFieldProfile(
              isCompalsory: true,
              isDropDown: false,
              // controller: controller.countryController,
              hintText: "Pricewater CooperHouse",
              mainTxtTitle: "Company Name",
            ),
            SizedBox(
              height: h * 0.012,
            ),
            TitleWithFieldProfile(
              isCompalsory: true,
              isDropDown: false,
              // controller: controller.countryController,
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
                  width: w * 0.33,
                  // controller: controller.countryController,
                  hintText: "22/06/2018",
                  mainTxtTitle: "Start Date",
                ),
                TitleWithFieldProfile(
                  isCompalsory: true,
                  isDropDown: true,
                  width: w * 0.33,
                  // controller: controller.countryController,
                  hintText: "22/06/2018",
                  mainTxtTitle: "End Date",
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
    );
  }
}
