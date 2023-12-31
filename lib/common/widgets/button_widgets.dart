import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/common/widgets/app_shadow.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';

Widget appButton(
    {double width = 325,
    double height = 50,
    String buttonName = "",
    bool isLogin = true}) {
  return GestureDetector(
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(
          color:
              isLogin ? AppColors.primaryElement : AppColors.primaryBackground,
          border: Border.all(color: AppColors.primaryThreeElementText)),
      child: Center(
          child: text16Nomal(
              text: buttonName,
              color: isLogin
                  ? AppColors.primaryElementText
                  : AppColors.primaryText)),
    ),
  );
}
