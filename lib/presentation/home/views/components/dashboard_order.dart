import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class DashboardOrder extends StatefulWidget {
  const DashboardOrder({super.key});

  @override
  State<DashboardOrder> createState() => _DashboardOrderState();
}

class _DashboardOrderState extends State<DashboardOrder> {
  List<OrderModel> orders = [
    OrderModel(
      name: 'Clean Motobike To Make ',
      price: 'Rp. 100.000',
      quantity: '2',
    ),
    OrderModel(
      name: 'Service 2',
      price: 'Rp. 200.000',
      quantity: '1',
    ),
    OrderModel(
      name: 'Service 3',
      price: 'Rp. 300.000',
      quantity: '3',
    ),
    OrderModel(
      name: 'Clean Helmet',
      price: 'Rp. 400.000',
      quantity: '1',
    ),
    OrderModel(
      name: 'Service 5',
      price: 'Rp. 500.000',
      quantity: '2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order',
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Nota number : 001',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.darkGray,
              ),
            ),
            5.verticalSpace,
            const Row(
              children: [
                Expanded(
                    flex: 3, child: Text('Item', textAlign: TextAlign.start)),
                Expanded(
                    flex: 1, child: Text('Qty', textAlign: TextAlign.center)),
                Expanded(
                    flex: 2, child: Text('Price', textAlign: TextAlign.end)),
              ],
            ),
            5.verticalSpace,
            Divider(thickness: 1.w),
            Text(
              'Order details',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.accentOrange,
                fontWeight: FontWeight.w600,
              ),
            ),
            10.verticalSpace,
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  var data = orders[index];
                  return cardOrder(data: data);
                },
                separatorBuilder: (context, index) => 12.verticalSpace,
              ),
            ),
            10.verticalSpace,
            Divider(thickness: 1.w),
            10.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    color: AppColors.accentOrange,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Rp 200.000',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                paymentMethod(icon: Icons.credit_card, title: 'Debit'),
                paymentMethod(
                    icon: Icons.money, title: 'Cash', isSelected: true),
                paymentMethod(icon: Icons.qr_code, title: 'QRIS'),
              ],
            ),
            18.verticalSpace,
            processButton(),
          ],
        ),
      ),
    );
  }

  Widget paymentMethod({
    required IconData icon,
    required String title,
    bool isSelected = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
      decoration: BoxDecoration(
        border: Border.all(
            color: isSelected ? AppColors.white : AppColors.mediumGray),
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
    );
  }

  Widget processButton() {
    return InkWell(
      onTap: () {
        // showQRISDialog(context);
        showPaymentDialog(context);
      },
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: AppColors.accentOrange,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
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
              'Rp. 200.000',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
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
          ],
        ),
      ),
    );
  }

  Widget cardOrder({required OrderModel data}) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 3, child: Text(data.name, textAlign: TextAlign.start)),
          Expanded(
              flex: 1, child: Text(data.quantity, textAlign: TextAlign.center)),
          Expanded(flex: 2, child: Text(data.price, textAlign: TextAlign.end)),
        ],
      ),
    );
  }

  void showQRISDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
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
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.accentOrange,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
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
      },
    );
  }

  void showPaymentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
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
                          'Cash Payment',
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
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 4),
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
                  children: [
                    _buildNominalButton(isSelected: true, text: 'Uang Pas'),
                    _buildNominalButton(text: 'Rp. 20.000'),
                    _buildNominalButton(text: 'Rp. 50.000'),
                    _buildNominalButton(text: 'Rp. 100.000'),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Navigator.pop(context),
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
                            color: Colors.black.withOpacity(0.1),
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
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

// Widget untuk tombol nominal
  Widget _buildNominalButton({bool isSelected = false, required String text}) {
    return Container(
      width: 100.w,
      height: 50.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 10.r,
            spreadRadius: 0,
          ),
        ],
        color: isSelected ? AppColors.white : AppColors.accentOrange,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: AppColors.accentOrange),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
            color: isSelected ? AppColors.accentOrange : AppColors.white,
          ),
        ),
      ),
    );
  }
}

class OrderModel {
  final String name;
  final String price;
  final String quantity;

  OrderModel({required this.name, required this.price, required this.quantity});
}
