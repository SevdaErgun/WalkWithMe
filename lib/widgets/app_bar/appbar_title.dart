import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    required this.text,
    this.margin,
    this.onTap,
  });

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
          padding: margin ?? EdgeInsets.zero,
          child: Row(children: [
            Image.asset(
              ImageConstant.imgProjectLogo,
              width: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtDancingScript.copyWith(
                color: ColorConstant.blackText,
              ),
            ),
          ])),
    );
  }
}
