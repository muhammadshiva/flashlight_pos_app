import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CheckoutDialog extends StatelessWidget {
  const CheckoutDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const CheckoutDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Container(
        constraints: BoxConstraints(maxHeight: 500.w),
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        width: 500.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            IconButton(
              alignment: Alignment.centerLeft,
              icon: Icon(
                Icons.close_rounded,
                color: AppColors.accentOrange,
                size: 18.w,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            SizedBox(
              height: 80.w,
              child: OverflowBox(
                minHeight: 100.w,
                maxHeight: 100.w,
                child: Lottie.asset(
                  Assets.lotties.paymentSuccess,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Process your payment\nat cashier',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),
            15.verticalSpace,
            item(title: 'Payment Method', subtitle: 'Cash'),
            item(title: 'Total Bill', subtitle: 'Rp. 80.000'),
            item(title: 'Total Change', subtitle: 'Rp. 100.000'),
            item(title: 'Payment Date', subtitle: '17 Februiary 2025'),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Button.outlined(
                    onPressed: () => Navigator.pop(context),
                    label: 'Cancel',
                  ),
                ),
                const SizedBox(width: 15.0),
                Expanded(
                  child: Button.filled(
                    onPressed: () => Navigator.pop(context),
                    label: 'Print',
                    icon: const Icon(Icons.print, color: Colors.white),
                  ),
                ),
              ],
            ),
            15.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget item({
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        5.verticalSpace,
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        2.verticalSpace,
        Text(
          subtitle,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        5.verticalSpace,
        Divider(
          thickness: 0.5.w,
          color: Colors.grey.withValues(
            alpha: 0.4,
          ),
        ),
      ],
    );
  }
}
