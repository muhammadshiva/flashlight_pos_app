import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key,
    required this.icon,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.white : AppColors.mediumGray,
          ),
          borderRadius: BorderRadius.circular(6.r),
          color: isSelected ? AppColors.accentOrange : AppColors.white,
        ),
        child: Column(
          spacing: 3.w,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.white : AppColors.darkGray,
            ),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? AppColors.white : AppColors.darkGray,
                fontSize: 10.sp,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
