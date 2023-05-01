import 'package:custom_rounded_rectangle_border/custom_rounded_rectangle_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';

class PhoneNumberField extends StatelessWidget {
  PhoneNumberField({Key? key, this.controller, this.countryCode})
      : super(key: key);

  TextEditingController? controller;
  String? countryCode;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.80,
      height: 45,
      decoration: BoxDecoration(
        color: cTextFieldBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: w*0.03,),
          Text(
            countryCode.toString(),
            style: AppStyle.textStyleFamilyMontserratMedium
                .copyWith(fontSize: 15, color: cTextGreyColor),
          ),
          SizedBox(width: w*0.03,),
          SizedBox(width: 0.3,height: 45,child: Container(
            color: cTextGreyColor,
          ),),
          SizedBox(width: w*0.03,),
          Container(
            width:w*0.6,
            child: TextFormField(
              style: AppStyle.textStyleFamilyMontserratMedium.copyWith(fontSize: 15),
              controller: controller,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                enabled: true,
                prefixIconConstraints: BoxConstraints(),
                hintText: "9000000000",
                hintStyle: AppStyle.textStyleFamilyMontserratMedium
                    .copyWith(height: 2, color: cTextFieldHint, fontSize: 13),
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
