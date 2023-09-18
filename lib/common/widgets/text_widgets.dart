import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';

Widget text24Nomal({String text = "", Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 24, color: color, fontWeight: FontWeight.normal),
  );
}

Widget text16Nomal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.normal),
  );
}

Widget text14Nomal(
    {String text = "", Color color = AppColors.primaryThreeElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 14, color: color, fontWeight: FontWeight.normal),
  );
}

Widget textUnderLine({String text = ""}) {
  return GestureDetector(
    onTap: () {},
    child: Text(
      text,
      style: TextStyle(
          color: AppColors.primaryText,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryText,
          fontWeight: FontWeight.normal,
          fontSize: 12.sp),
    ),
  );
}
