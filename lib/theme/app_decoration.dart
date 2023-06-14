import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientDeeporangeA400d8Orange300d8 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0.03,
          ),
          end: Alignment(
            0.84,
            0.75,
          ),
          colors: [
            ColorConstant.deepOrangeA400D8.withOpacity(0.75),
            ColorConstant.orange300D8.withOpacity(0.75),
          ],
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.blue30060,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            6,
          ),
        ),
      );
  static BoxDecoration get gradientDeeporangeA40001Orange300 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.deepOrangeA40001,
            ColorConstant.navigationBar,
          ],
        ),
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              14,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBluegray700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get outlineBluegray700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBR299 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        299,
      ),
    ),
  );

  static BorderRadius roundedBorder45 = BorderRadius.circular(
    getHorizontalSize(
      45,
    ),
  );

  static BorderRadius roundedBorder117 = BorderRadius.circular(
    getHorizontalSize(
      117,
    ),
  );

  static BorderRadius roundedBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius txtRoundedBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13,
    ),
  );

  static BorderRadius roundedBorder60 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
