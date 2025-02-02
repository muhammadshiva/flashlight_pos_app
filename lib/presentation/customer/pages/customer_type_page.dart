import 'package:flashlight_pos_app/presentation/customer/components/customer_type_section.dart';
import 'package:flashlight_pos_app/presentation/customer/components/welcome_section.dart';
import 'package:flutter/material.dart';

class CustomerTypePage extends StatefulWidget {
  const CustomerTypePage({super.key});

  @override
  State<CustomerTypePage> createState() => _CustomerTypePageState();
}

class _CustomerTypePageState extends State<CustomerTypePage> {
  String selectedTitle = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          WelcomeSection(),
          Expanded(child: CustomerTypeSection()),
        ],
      ),
    );
  }
}

  //* Admin Login Button
  // Align(
  //   alignment: Alignment.centerRight,
  //   child: Container(
  //     padding:
  //         EdgeInsets.symmetric(horizontal: 9.w, vertical: 7.w),
  //     height: 34.w,
  //     width: 127.w,
  //     decoration: BoxDecoration(
  //       border: Border.all(
  //         color: AppColors.lightGray2,
  //       ),
  //       borderRadius: BorderRadius.circular(10.r),
  //     ),
  //     child: Row(
  //       children: [
  //         const Icon(
  //           Icons.login,
  //           color: AppColors.darkSlate,
  //         ),
  //         const Spacer(),
  //         Text(
  //           'Admin',
  //           style: AppFonts.poppinsTextStyle.copyWith(
  //             color: AppColors.darkSlate,
  //             fontWeight: semiBold,
  //             fontSize: 12.sp,
  //           ),
  //         ),
  //         const Spacer(),
  //       ],
  //     ),
  //   ),
  // ),