import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/utils/enums/payment_method_enum.dart';
import 'package:flashlight_pos_app/presentation/home/bloc/product/product_bloc.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/button/submit_button.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/card/order_card.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/card/payment_method_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardOrder extends StatefulWidget {
  const DashboardOrder({super.key});

  @override
  State<DashboardOrder> createState() => _DashboardOrderState();
}

class _DashboardOrderState extends State<DashboardOrder> {
  final paymentMethods = [
    PaymentMethodCard(
      icon: Icons.credit_card,
      title: PaymentMethodType.debit.name,
    ),
    PaymentMethodCard(
      icon: Icons.money,
      title: PaymentMethodType.cash.name,
    ),
    PaymentMethodCard(
      icon: Icons.qr_code,
      title: PaymentMethodType.qris.name,
    ),
  ];

  String selectedPayment = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.9,
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Column(
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
                      flex: 3,
                      child: Text(
                        'Item',
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Qty',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Price',
                        textAlign: TextAlign.end,
                      ),
                    ),
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
                  child: state.selectedProducts.isEmpty
                      ? const Text(
                          'Please select a product from the list.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          itemCount: state.selectedProducts.length,
                          itemBuilder: (context, index) {
                            var product = state.selectedProducts[index];
                            return OrderCard(product: product);
                          },
                          separatorBuilder: (context, index) =>
                              12.verticalSpace,
                        ),
                ),
                10.verticalSpace,
                Divider(thickness: 1.w),
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Subtotal',
                      style: TextStyle(
                        color: AppColors.accentOrange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Rp ${state.totalPrice ?? 0}  ',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: paymentMethods
                        .map((e) => PaymentMethodCard(
                              title: e.title,
                              icon: e.icon,
                              isSelected: state.selectedPayment == e.title,
                              onTap: () {
                                context.read<ProductBloc>().add(
                                      ProductEvent.selectPayment(e.title),
                                    );
                              },
                            ))
                        .toList()),
                18.verticalSpace,
                SubmitButton(
                  total: state.totalPrice ?? 0,
                  selectedPayment: state.selectedPayment ?? '',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
