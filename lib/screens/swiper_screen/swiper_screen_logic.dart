import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/Widget/jobPreviewDialog.dart';
import 'package:swipeme/Widget/swiper/SwipeableCardSectionController.dart';

class SwiperScreenLogic extends GetxController with StateMixin<dynamic> {

  void openJobDetailsDialog(BuildContext context) {

    showDialog(context: context, builder: (_) => AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      content: JobPreviewDialog(
        onCancel: () {
          Get.back();
          debugPrint('onTapDeny : ');
        },
      ),
    ));

    // Get.defaultDialog(
    //   title: "",
    //   titlePadding: EdgeInsets.zero,
    //   radius: 5.0,
    //   content: JobPreviewDialog(
    //     onCancel: () {
    //       Get.back();
    //       debugPrint('onTapDeny : ');
    //     },
    //   ),
    // );
  }

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
}
