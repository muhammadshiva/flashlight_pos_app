import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
    this.isSelected = false,
  });

  final String imagePath;
  final String title;
  final Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(0.w, 10.w, 10.w, 10.w),
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: isSelected ? AppColors.accentOrange : AppColors.white,
          border: Border.all(
            color: isSelected ? AppColors.accentOrange : Colors.transparent,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 10.r,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            spacing: 8.w,
            children: [
              Image.asset(imagePath, height: 10.w),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? AppColors.white : AppColors.primary,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
