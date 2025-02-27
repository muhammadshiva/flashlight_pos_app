import 'package:flashlight_pos_app/presentation/setting/views/components/printer_list.dart';
import 'package:flashlight_pos_app/presentation/setting/views/components/printer_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrinterMenu extends StatelessWidget {
  const PrinterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30.w,
      children: [
        PrinterTab(),
        PrinterList(),
      ],
    );
  }
}
