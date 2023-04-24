
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

double getHorizontalSize(double px) {
  return px * ((MediaQuery.of(Get.context!).size.width) / 375);
}

double getFontSize(double px) {
  return px * ((MediaQuery.of(Get.context!).size.width) / 375);
}

double getVerticalSize(double px) {
  return px * ((MediaQuery.of(Get.context!).size.height) / 890);
}


const familyMontserratBold = 'Montserrat-Bold';
const familyMontserratLight = 'Montserrat-Light';
const familyMontserratMedium = 'Montserrat-Medium';
const familyMontserratRegular = 'Montserrat-Regular';
const familyMontserratSemiBold = 'Montserrat-SemiBold';

class AppStyle {

  /// DEFINE FONT FAMILY
  static TextStyle textStyleFamilyMontserratBold = const TextStyle(fontFamily: familyMontserratBold);
  static TextStyle textStyleFamilyMontserratLight = const TextStyle(fontFamily: familyMontserratLight);
  static TextStyle textStyleFamilyMontserratMedium = const TextStyle(fontFamily: familyMontserratMedium);
  static TextStyle textStyleFamilyMontserratRegular = const TextStyle(fontFamily: familyMontserratRegular);
  static TextStyle textStyleFamilyMontserratSemiBold = const TextStyle(fontFamily: familyMontserratSemiBold);


}