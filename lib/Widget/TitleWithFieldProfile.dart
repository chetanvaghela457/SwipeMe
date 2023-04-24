import 'package:flutter/cupertino.dart';
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
      this.isCompalsory})
      : super(key: key);

  TextEditingController? controller;
  String? mainTxtTitle, hintText;
  double? width, height;
  bool? isCompalsory;
  Color? backgroundColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Text(
              mainTxtTitle ?? "",
              style: AppStyle.textStyleFamilyMontserratMedium
                  .copyWith(color: cBlack, fontSize: 15),
            ),
          ],
        ),

      ],
    );
  }
}
