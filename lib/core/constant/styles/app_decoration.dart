import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppDecoration {
  static InputDecoration inputDecoration = InputDecoration(
    fillColor: Colors.white,
    errorMaxLines: 2,
    contentPadding: EdgeInsets.symmetric(
      vertical: 14.w,
      horizontal: 16.w,
    ),
    counterText: "",
    hintStyle: AppTextStyle.poppins.copyWith(
      fontSize: 12.sp,
      color: Colors.grey,
    ),
    labelStyle: AppTextStyle.poppins.copyWith(
      color: AppColors.primary,
      fontWeight: bold,
      fontSize: 12.sp,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(8.r),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(8.r),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.accentOrange),
      borderRadius: BorderRadius.all(
        Radius.circular(8.r),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(8.r),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(8.r),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(8.r),
      ),
    ),
  );
}
