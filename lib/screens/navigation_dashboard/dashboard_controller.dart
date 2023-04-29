import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../Constant/app_constant.dart';
import '../../Constant/app_image.dart';
import '../../Constant/colors.dart';
import '../../Utils/preference.dart';

class DashboardLogic extends GetxController with StateMixin<dynamic> {
  RxInt tabIndex = 0.obs; //tabcontroller

  RxBool flag = true.obs;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
    FocusScope.of(Get.context!).unfocus();
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        Assets.bottom_nav_home,
        height: 15,
      ),
      icon: SvgPicture.asset(
        Assets.bottom_home_unselected,
        height: 15,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        Assets.bottom_nav_profile_selected,
        height: 15,
      ),
      icon: SvgPicture.asset(
        Assets.bottom_nav_profile,
        height: 15,
      ),
      label: 'Explore',
    ),
    BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        Assets.bottom_nav_swiper_selected,
        height: 15,
      ),
      icon: SvgPicture.asset(
        Assets.bottom_nav_swiper,
        height: 15,
      ),
      label: 'Favorites',
    ),
    BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        Assets.bottom_nav_message_selected,
        height: 15,
      ),
      icon: SvgPicture.asset(
        Assets.bottom_nav_message,
        height: 15,
      ),
      label: 'Message',
    ),
    BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        Assets.bottom_nav_settings_selected,
        height: 15,
      ),
      icon: SvgPicture.asset(
        Assets.bottom_nav_settings,
        height: 15,
      ),
      label: 'Profile',
    ),
  ];

  @override
  void onInit() async {
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

  void changeTabIndex(int index, {String? trakingId}) {
    tabIndex.value = index;
    debugPrint('index : ${index}');
    update();
  }
}
