import 'package:custom_rounded_rectangle_border/custom_rounded_rectangle_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipeme/constant/appstyle.dart';
import 'package:swipeme/constant/colors.dart';

class MultiLineTextField extends StatelessWidget {
  MultiLineTextField(
      {Key? key,
      this.inputFormatters,
      this.textInputAction,
      this.isEnable,
      this.height,
      this.width,
      this.textStyle,
      this.prefix,
      this.suffixIconSvg,
      this.controller,
      this.prefixIconSvg,
      this.hintTextStyle,
      this.hintText,
      this.textInputType,
      this.lines})
      : super(key: key);

  double? height, width;
  TextEditingController? controller;
  String? hintText, prefixIconSvg, suffixIconSvg;
  TextStyle? textStyle, hintTextStyle;
  Widget? prefix;
  TextInputType? textInputType;
  bool? isEnable;
  int? lines;
  TextInputAction? textInputAction;
  List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final hidePasswordNotifier = ValueNotifier(true);
    final isPassword = textInputType == TextInputType.visiblePassword;
    return Container(
      width: width ?? w * 0.80,
      height: height ?? 45,
      decoration: BoxDecoration(
        color: cTextFieldBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ValueListenableBuilder(
          valueListenable: hidePasswordNotifier,
          builder: (context, dynamic value, child) {
            return TextFormField(
              style: textStyle ??
                  AppStyle.textStyleFamilyMontserratMedium.copyWith(fontSize: 15),
              controller: controller,
              keyboardType: textInputType,
              obscureText: isPassword ? value : false,
              // obscuringCharacter: '*',
              textInputAction: textInputAction ?? TextInputAction.next,
              inputFormatters: inputFormatters,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                enabled: isEnable ?? true,
                prefixIconConstraints: BoxConstraints(),
                prefixIcon: prefixIconSvg == null ? SizedBox(width: w*0.05,) : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: SvgPicture.asset(prefixIconSvg!, width: w*0.05, height: w*0.05,)),
                suffixIcon: suffixIconSvg != null
                    ? Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        child: SvgPicture.asset(
                          suffixIconSvg!,
                          width: w*0.05,
                          height: w*0.05,
                        ))
                    : isPassword
                        ? Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: IconButton(
                                onPressed: () => hidePasswordNotifier.value =
                                    !hidePasswordNotifier.value,
                                icon: Icon(
                                  value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: cTextGreyColor,
                                  size: 18,
                                )),
                          )
                        : null,
                hintText: hintText ?? "",
                hintStyle: hintTextStyle ??
                    AppStyle.textStyleFamilyMontserratMedium
                        .copyWith(height: 2, color: cTextFieldHint, fontSize: 12),
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            );
          }),
    );
  }
}
