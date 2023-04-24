import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:developer' as logger;

class Const {

  static const raduis = 8.0;
  static const buttonRadius = 15.0;
  static const welcome_circle_raduis = 35.0;


  /// SAVE PREFERENCE KEY ///
  static const prefEmail = 'email';
  static const prefPass = 'password';
  static const prefFCMToken = 'fcmToken';

  static const prefFName = 'firstName';
  static const prefLName = 'lastName';
  static const prefGender = 'gender';
  static const prefMobile = 'mobileNumber';
  static const prefEmailVerifiedAt = 'emailVerifiedAt';
  static const prefImage = 'image';
  static const prefuserIdNum = 'userIdNum';
  static const prefuserIdType = 'userIdType';
  static const prefAreaPin = 'areaPin';
  static const prefCity = 'city';
  static const prefaddress = 'address';
  static const prefuserRole = 'userRole';
  static const prefAccessToken = 'accessToken';
  static const prefRememberMe = 'rememberMe';


  static const prefAPIToken = 'apiToken';
  static const prefIsLoggedIn = 'isLogin';
  static const prefIsStartTime = 'isStartTime';

  static const lblSelect = 'Select';
  static const lblGenderMale = 'Male';
  static const lblGenderFemale = 'Female';
  static const lblGenderOther = 'Other';
  static const lblRoleMr = 'Mr';
  static const lblRoleAreaMan = 'Area Manager';
  static const lblRoleRetailer = 'Retailer';
  static const lblRoleStocklist = 'Stocklist';


  static const monthly = 'monthly';
  static const quarterly = 'quarterly';
  static const yearly = 'yearly';


  /// REGULAR EXPRESSION VALIDATION PATTERN ///
  static const emailPattern =  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const nameWithSpecialCharacterPattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
  static const nameWithNumericPattern = r'[0-9]+';
  static const cardNumber = r'[0-9]';
  static const alfaNumeric = r'^[A-Za-z]{4}\d{7}$';
  static const mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

  /// Toast for default time
  void toast(
      String? value, {
        ToastGravity? gravity,
        length = Toast.LENGTH_SHORT,
        Color? bgColor,
        Color? textColor,
        bool print = false,
      }) {
    if (value!.isEmpty) {
      logger.log(value);
    } else {
      Fluttertoast.showToast(
        msg: value.toString(),
        gravity: gravity,
        toastLength: length,
        backgroundColor: bgColor,
        textColor: textColor,
      );
      if (print) logger.log(value);
    }
  }

  //btoken
  static const btoken = 'WJwKYVsz6Y6DFGguY7Xnc';

}


///App Roles
class UserRoles {
  static const int mr = 1;
  static const int areamanager = 2;
  static const int retailer = 3;
  static const int stocklist = 4;
}

class Gender {
  static const int male = 0;
  static const int feMale = 1;
  static const int others = 2;
}
