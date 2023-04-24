import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipeme/Widget/ctextformfield.dart';
import 'package:swipeme/Widget/textFomFieldCorner.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';

class CornerPlusButton extends StatelessWidget {
  CornerPlusButton(
      {Key? key,
      this.controller,
      this.width,
      this.height,
      this.backgroundColor,
      this.hintText,
      this.isEditableField,
      this.onTap})
      : super(key: key);

  TextEditingController? controller;
  String? hintText;
  double? width, height;
  bool? isEditableField;
  Color? backgroundColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isEditableField == true
            ? TextFormFieldCorner(
                width: width,
                height: 40,
                controller: controller,
                hintText: hintText ?? "",
                textInputType: TextInputType.emailAddress,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r" "))
                ],
                textInputAction: TextInputAction.next)
            : GestureDetector(
              onTap: onTap,
              child: Container(
                  width: width,
                  height: height ?? 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: cTextFieldHint, width: 1),
                    color: cWhite,
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
                          child: Image.asset(
                            Assets.plus_icon,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
      ],
    );
  }
}
