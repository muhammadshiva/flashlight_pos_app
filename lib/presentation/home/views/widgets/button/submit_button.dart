import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/utils/enums/payment_method_enum.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/dialog/payment_dialog.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/dialog/qris_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.total,
    required this.selectedPayment,
  });

  final int total;
  final String selectedPayment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (selectedPayment == PaymentMethodType.cash.name) {
          PaymentDialog.show(context);
        } else {
          QrisDialog.show(context);
        }
      },
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: total != 0 && selectedPayment != ''
              ? AppColors.accentOrange
              : AppColors.mediumGray,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              offset: const Offset(0, 4),
              blurRadius: 10.r,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rp. $total',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            if (total != 0 && selectedPayment != '') ...[
              Row(
                spacing: 5.w,
                children: [
                  Text(
                    'Process',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                  LottieBuilder.asset(
                    Assets.lotties.arrowRight,
                    height: 20.w,
                  ),
                ],
              ),
            ]
          ],
        ),
      ),
    );
  }
}
