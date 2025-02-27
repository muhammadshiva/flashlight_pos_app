import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/presentation/setting/views/widgets/printer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrinterList extends StatelessWidget {
  const PrinterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGray2),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        spacing: 20.w,
        children: [
          PrinterCard(
            device: 'Galaxy A30',
            macAddress: '1234',
          ),
          PrinterCard(
            device: 'Galaxy A30',
            macAddress: '1234',
          ),
          PrinterCard(
            device: 'Galaxy A30',
            macAddress: '1234',
          ),
        ],
      ),
    );
  }
}
