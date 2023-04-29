import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swipeme/Constant/app_constant.dart';
import 'package:swipeme/Constant/app_image.dart';
import 'package:swipeme/Constant/appstyle.dart';
import 'package:swipeme/Widget/CustomDropdown.dart';
import 'package:swipeme/Widget/ctextformfield.dart';
import 'package:swipeme/screens/home_screen/home_screen_logic.dart';
import 'package:swipeme/screens/navigation_dashboard/dashboard_controller.dart';

import '../../Constant/colors.dart';

class HomeScreenView extends GetView<HomeScreenLogic> {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Obx(() {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: w,
              height: h * 0.09,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              debugPrint("Open Drawer");
                              Get.find<DashboardLogic>()
                                  .scaffoldKey
                                  .currentState!
                                  .openDrawer();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.06),
                              child: SvgPicture.asset(
                                Assets.open_nav_side,
                                height: w * 0.03,
                                width: w * 0.03,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          Container(
                              child: Image.asset(Assets.swipe_me_tool,
                                  width: w * 0.3, height: h * 0.03)),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              debugPrint("Notification Click");
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: w * 0.03),
                              child: SvgPicture.asset(
                                Assets.has_notification_icon,
                                height: w * 0.05,
                                width: w * 0.05,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              debugPrint("Message Click");
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: w * 0.03),
                              child: SvgPicture.asset(
                                Assets.has_messages_icon,
                                height: w * 0.05,
                                width: w * 0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: h*0.01,)
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * 0.04,
                      ),
                      Text(
                        "Hi Naman!",
                        style: AppStyle.textStyleFamilyMontserratBold
                            .copyWith(fontSize: 17, color: cBlack),
                      ),
                      SizedBox(
                        height: h * 0.005,
                      ),
                      Text(
                        "Svipe to your dream job",
                        style: AppStyle.textStyleFamilyMontserratMedium
                            .copyWith(fontSize: 12, color: cBlack),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      CTextFormField(
                          width: w * 0.9,
                          height: 40,
                          controller: controller.searchKeywordController,
                          hintText: "Type your perfect keyword match",
                          prefixIconSvg: Assets.search,
                          textInputType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r" "))
                          ],
                          textInputAction: TextInputAction.next),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      CTextFormField(
                          width: w * 0.9,
                          height: 40,
                          controller: controller.preferredLocationController,
                          hintText: "Type your preferred Location",
                          prefixIconSvg: Assets.location_profile,
                          textInputType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r" "))
                          ],
                          textInputAction: TextInputAction.next),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      jobTypeDropDown(w,h),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Image.asset(Assets.find_internship,width: w*0.9,fit: BoxFit.fitWidth,),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Image.asset(Assets.find_job_home,width: w*0.9,fit: BoxFit.fitWidth,),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Image.asset(Assets.find_freelance_project,width: w*0.9,fit: BoxFit.fitWidth,),
                      SizedBox(
                        height: h * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  Widget jobTypeDropDown(double w, double h) {
    return Container(
      child: CustomDropdown<int>(
        onChange: (int index) =>
            {controller.jobTypeDropDown.value = Const.jobType[index]},
        dropdownButtonStyle: DropdownButtonStyle(
          width: w * 0.9,
          height: 40,
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
        items: Const.jobType
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
          width: w * 0.9,
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
                  controller.jobTypeDropDown.value.isNotEmpty
                      ? controller.jobTypeDropDown.value
                      : "Select Type of Job",
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
  }
}
