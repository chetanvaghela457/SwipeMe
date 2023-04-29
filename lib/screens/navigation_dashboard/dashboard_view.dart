import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeme/Widget/cdrawer.dart';
import 'package:swipeme/screens/home_profile_screen/home_profile_screen_view.dart';
import 'package:swipeme/screens/home_screen/home_screen_view.dart';
import 'package:swipeme/screens/match_found_screen/match_found_screen_view.dart';
import 'package:swipeme/screens/swiper_screen/swiper_screen_view.dart';

import '../../Constant/colors.dart';
import 'dashboard_controller.dart';

class DashboardWidget extends GetView<DashboardLogic> {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<DashboardLogic>();

    return Obx(() {
      debugPrint("Flag ==> ${controller.flag}");
      return Scaffold(
        key: controller.scaffoldKey,
        drawer: CDrawer(),
        // drawer: CustomDrawer(userRoleid: controller.userRoleid.value,),
        body: IndexedStack(
          index: controller.tabIndex.value,
          children: [
            HomeScreenView(),
            HomeProfileScreenView(),
            SwiperScreenView(),
            MatchFoundScreenView(),
            HomeScreenView()
          ],
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: cButtonColor,
            unselectedItemColor: cTextFieldHint,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: cWhite,
            items: [...controller.bottomNavigationBarItems],
          ),
        ),
      );
    });
  }
}
