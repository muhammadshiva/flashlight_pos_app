import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrisDialog extends StatelessWidget {
  const QrisDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const QrisDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: SizedBox(
        width: 300.w,
        height: 380.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12.r),
                ),
              ),
              child: Center(
                child: Text(
                  'QRIS Payment',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            Image.asset(
              Assets.images.icQris.path,
              width: 200.w,
              height: 200.w,
              fit: BoxFit.contain,
            ),
            20.verticalSpace,
            Text(
              'Scan QRIS to\nmake payment',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.darkGray,
              ),
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColors.accentOrange,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      offset: const Offset(0, 4),
                      blurRadius: 10.r,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Text(
                  'Close',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
