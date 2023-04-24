import 'package:flutter/material.dart';
import 'package:swipeme/constant/colors.dart';

class CButton extends StatelessWidget {
  CButton(
      {Key? key,
      required this.child,
      this.height,
      this.width,
      this.backgroundColor,
      this.onTap})
      : super(key: key);

  final Widget child;
  double? width, height;
  Color? backgroundColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? w * 0.8,
        height: height ?? 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: cButtonColor, width: 2.5),
          color: backgroundColor ?? cButtonColor,
        ),
        child: child,
      ),
    );
  }
}
