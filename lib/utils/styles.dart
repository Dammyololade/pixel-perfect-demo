
import 'package:flutter/material.dart';
import 'package:pixel_perfect_example/utils/colors.dart';
import 'package:pixel_perfect_example/utils/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextStyleExt on TextStyle {

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  TextStyle get content => copyWith(
        color: AppColors.primaryLight,
        fontFamily: AppFonts.sFProDisplay.name,
        fontSize: 17,
        height: 1.35,
      );

  TextStyle get contentBold => content.copyWith(
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );

  TextStyle get title => copyWith(
    color: Colors.white,
    fontSize: 29,
    fontFamily: AppFonts.kanit.name,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );

  TextStyle get subTitle => copyWith(
    color: AppColors.primaryLight,
    fontSize: 15,
    fontFamily: AppFonts.sFProDisplay.name,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  TextStyle get button => copyWith(
    color: Colors.white,
    fontSize: 15,
    fontFamily: AppFonts.sFProDisplay.name,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  TextStyle get contentOptimised => copyWith(
    color: AppColors.primaryLight,
    fontFamily: AppFonts.sFProDisplay.name,
    fontSize: 17.sp,
    height: 1.35.h,
  );

  TextStyle get contentBoldOptimised => contentOptimised.copyWith(
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  TextStyle get titleOptimised => copyWith(
    color: Colors.white,
    fontSize: 29.sp,
    fontFamily: AppFonts.kanit.name,
    fontWeight: FontWeight.w400,
   height: 1.2.h,
  );

  TextStyle get subTitleOptimised => copyWith(
    color: AppColors.primaryLight,
    fontSize: 15.sp,
    fontFamily: AppFonts.sFProDisplay.name,
    fontWeight: FontWeight.w500,
    height: 1.h,
  );

  TextStyle get buttonOptimised => copyWith(
    color: Colors.white,
    fontSize: 15.sp,
    fontFamily: AppFonts.sFProDisplay.name,
    fontWeight: FontWeight.w500,
    height: 1.h,
  );
}