import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipeme/Widget/ctextformfield.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';

class TitleWithFieldProfile extends StatelessWidget {
  TitleWithFieldProfile(
      {Key? key,
      this.controller,
      this.width,
      this.height,
      this.backgroundColor,
      this.mainTxtTitle,
      this.hintText,
      this.isCompalsory,
      this.isDropDown,
      this.lines})
      : super(key: key);

  TextEditingController? controller;
  String? mainTxtTitle, hintText;
  double? width, height;
  bool? isCompalsory, isDropDown;
  Color? backgroundColor;
  VoidCallback? onTap;
  int? lines = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width,
          child: Row(
            children: [
              Text(
                mainTxtTitle ?? "",
                style: AppStyle.textStyleFamilyMontserratMedium
                    .copyWith(color: cBlack, fontSize: 13),
              ),
              isCompalsory == true
                  ? Text(
                      "*",
                      style: AppStyle.textStyleFamilyMontserratMedium
                          .copyWith(color: cStarColor, fontSize: 13),
                    )
                  : SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        isDropDown == false
            ? CTextFormField(
                width: width,
                height: 40,
                controller: controller,
                hintText: hintText ?? "",
                textInputType: TextInputType.emailAddress,
                lines: lines,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r" "))
                ],
                textInputAction: TextInputAction.next)
            : Container(
                width: width,
                height: height ?? 40,
                decoration: BoxDecoration(
                  color: cTextFieldBackground,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Center(
                          child: Text(
                            hintText ?? "",
                            style: AppStyle.textStyleFamilyMontserratMedium
                                .copyWith(
                                    color: cTextFieldHint,
                                    fontSize: 13),
                          ),
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
                )),
      ],
    );
  }
}
