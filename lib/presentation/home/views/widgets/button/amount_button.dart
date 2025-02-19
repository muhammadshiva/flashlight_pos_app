import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AmountButton extends StatelessWidget {
  const AmountButton({
    super.key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  final String title;
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100.w,
        height: 50.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              offset: const Offset(0, 4),
              blurRadius: 10.r,
              spreadRadius: 0,
            ),
          ],
          color: isSelected ? AppColors.accentOrange : AppColors.white,
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: AppColors.accentOrange),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: isSelected ? AppColors.white : AppColors.accentOrange,
            ),
          ),
        ),
      ),
    );
  }
}
