import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/button/amount_button.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/dialog/checkout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class PaymentDialog extends StatefulWidget {
  const PaymentDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const PaymentDialog(),
    );
  }

  @override
  State<PaymentDialog> createState() => _PaymentDialogState();
}

class _PaymentDialogState extends State<PaymentDialog> {
  List amouunts = ['Uang Pas', '20000', '50000', '100000'];
  String selectedAmount = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        width: 500.w,
        height: 400.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.close_rounded,
                    color: AppColors.accentOrange,
                    size: 14.w,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Payment - Cash',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50.w),
              ],
            ),
            20.verticalSpace,
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    offset: const Offset(0, 4),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: TextFormField(
                decoration: AppDecoration.inputDecoration.copyWith(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.r),
                    ),
                  ),
                  hintText: 'Input Amount',
                ),
              ),
            ),
            30.verticalSpace,
            Text(
              'Choose Amount :',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
            ),
            10.verticalSpace,
            Wrap(
              spacing: 10.w,
              runSpacing: 10.w,
              children: amouunts
                  .map(
                    (e) => AmountButton(
                      title: e,
                      isSelected: selectedAmount == e,
                      onTap: () => setState(() {
                        selectedAmount = e;
                      }),
                    ),
                  )
                  .toList(),
            ),
            const Spacer(),
            InkWell(
              onTap: () => CheckoutDialog.show(context),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20.w),
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
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Pay',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                    LottieBuilder.asset(
                      Assets.lotties.arrowRight,
                      height: 20.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
