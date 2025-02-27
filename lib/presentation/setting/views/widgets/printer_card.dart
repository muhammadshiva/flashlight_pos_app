import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrinterCard extends StatelessWidget {
  const PrinterCard(
      {super.key, required this.device, required this.macAddress});

  final String device;
  final String macAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightGray2,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name : $device',
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
          Text(
            'mac Address: $macAddress',
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
