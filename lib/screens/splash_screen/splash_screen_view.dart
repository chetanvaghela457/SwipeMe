import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_logic.dart';

class SplashScreenView extends GetView<SplashScreenLogic> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: cBackgroundPrimary,
      body: Center(
          child: SvgPicture.asset(
        Assets.logo,
        width: w * 0.5,
        height: w * 0.1,
      )),
    );
  }
}
