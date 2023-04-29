import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:swipeme/Constant/colors.dart';
import 'package:swipeme/Widget/TitleWithFieldProfile.dart';
import 'package:swipeme/Widget/cbutton.dart';
import 'package:swipeme/Widget/cbuttonborder.dart';
import 'package:swipeme/Widget/multilineTextField.dart';
import 'package:swipeme/constant/app_image.dart';
import '../../Constant/appstyle.dart';

class CvUploadDialog extends StatelessWidget {
  var onCancel, onAdd;

  CvUploadDialog({
    this.onCancel,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.9,
      height: h * 0.45,
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
            Container(
              width: w * 0.15,
              height: h * 0.07,
              child: Image.asset(Assets.pdf_icon),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "Naman Agarwal CV.PDf",
              textAlign: TextAlign.center,
              style: AppStyle.textStyleFamilyMontserratBold
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: h * 0.003,
            ),
            Text(
              "678Kb",
              textAlign: TextAlign.center,
              style: AppStyle.textStyleFamilyMontserratMedium
                  .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "Auto Fill Information\nwith your CV",
              textAlign: TextAlign.center,
              style: AppStyle.textStyleFamilyMontserratMedium
                  .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Text(
              "Are you sure\nyou want to go ahead with this?",
              textAlign: TextAlign.center,
              style: AppStyle.textStyleFamilyMontserratMedium
                  .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CButtonBorder(
                  height: 40,
                  width: (w * 0.8)/2,
                  onTap: onCancel,
                  child: Center(
                    child: Text("ReUpload",
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(color: cBlack, fontSize: 15)),
                  ),
                ),
                CButton(
                  height: 40,
                  width: (w * 0.8)/2,
                  onTap: onAdd,
                  child: Center(
                    child: Text("Sure",
                        style: AppStyle.textStyleFamilyMontserratBold.copyWith(
                            color: cWhite, letterSpacing: 1, fontSize: 15)),
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
