import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swipeme/Constant/appstyle.dart';
import 'package:swipeme/Constant/colors.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/screens/navigation_dashboard/dashboard_controller.dart';

class CDrawer extends GetView<DashboardLogic> {
  const CDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: w*0.03,right: w*0.03,top: h*0.03,bottom: h*0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: cBorderImageColor,
                        child: ClipOval(child: Image.asset(Assets.circle_image_profile)),
                      ),
                      SizedBox(width: w*0.03,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Naman Agarwal",style: AppStyle.textStyleFamilyMontserratBold.copyWith(color: cBlack,fontSize: 15),),
                          SizedBox(height: h*0.006,),
                          Text("Head Engineer",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 10),),
                          SizedBox(height: h*0.015,),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10,top: 4,bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: cButtonColor, width: 2),
                              color: cButtonColor,
                            ),
                            child: Text("View Profile",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(fontSize: 12,color: cWhite),),
                          )
                        ],
                      ),
                      SizedBox(width: w*0.03,),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: SvgPicture.asset(
                          Assets.dropDown,
                          width: 8,
                          height: 8,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      Assets.back_icon_drawer,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("Become an Employer",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("About Us",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("Testimonials",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("Write to us (Help)",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("FAQ",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("Partners",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("Terms & Conditions",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.7,
                height: 0.3,
                color: cTextFieldHint,
              ),
              SizedBox(
                height: h * 0.009,
              ),
              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: w*0.02,),
                        SvgPicture.asset(
                          Assets.become_employer_icon,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: w*0.03,),
                        Text("Privacy Policy",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(color: cBlack,fontSize: 14),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: w*0.05),
                      child: SvgPicture.asset(
                        Assets.right_arrow_drawer_item,
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
