import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/create_profile_screen/create_profile_logic.dart';

class CreateProfileView extends GetView<CreateProfileLogic> {
  const CreateProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: cBackgroundPrimary,
        body: SingleChildScrollView(
          child: Container(
            color: cBackgroundPrimary,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.08,
                  ),
                  Text(
                    "Create your Profile",
                    textAlign: TextAlign.center,
                    style: AppStyle.textStyleFamilyMontserratBold
                        .copyWith(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: h * 0.007,
                  ),
                  Text(
                    "Enter your details here",
                    textAlign: TextAlign.center,
                    style: AppStyle.textStyleFamilyMontserratMedium
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: w*0.25,
                        width: w*0.25,
                        child: Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: cBorderImageColor,
                              child: ClipOval(child: Image.asset(Assets.circle_image_profile)),
                            ),
                            Positioned(
                                bottom: 60,
                                right: -35,
                                child: RawMaterialButton(
                                  onPressed: () {},
                                  elevation: 2.0,
                                  child: Image.asset(Assets.plus_icon,width: 25,height: 25,),
                                  shape: CircleBorder(),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(width: w*0.05,),
                      Column(
                        children: [
                          Text("Upload Profile Picture",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: cBlack),),
                          SizedBox(height: h*0.01,),
                          Text("Click on the plus button to\nbrowse picture",style: AppStyle.textStyleFamilyMontserratMedium.copyWith(fontSize: 12,fontWeight: FontWeight.w400,color: cTextFieldHint),)
                        ],
                      )
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        ));
  }
}
