import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/components/spaces.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/presentation/customer_type/models/customer_type_model.dart';
import 'package:flashlight_pos_app/presentation/customer_type/widgets/customer_type_card.dart';
import 'package:flashlight_pos_app/presentation/customer_type/widgets/sosmed_card.dart';
import 'package:flashlight_pos_app/presentation/home/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          //* Left Section
          Container(
            padding: const EdgeInsets.fromLTRB(60, 70, 60, 30),
            height: screenHeight,
            width: screenWidth * 0.55,
            color: AppColors.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.logoFlashlight.path, height: 109),
                const SpaceHeight(60.0),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 96,
                      height: 0.9,
                    ),
                    children: [
                      const TextSpan(text: 'We wash '),
                      TextSpan(
                        text: 'better',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: semiBold,
                          color: AppColors.accentOrange,
                        ),
                      ),
                      const TextSpan(text: ' than you do.'),
                    ],
                  ),
                ),
                const SpaceHeight(30.0),
                Text(
                  'we provide high-quality of services',
                  style: GoogleFonts.poppins().copyWith(
                    color: AppColors.lightWhite,
                    fontWeight: regular,
                    fontSize: 34,
                    height: 1.2,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SpaceHeight(35.0),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                    children: [
                      const TextSpan(
                          text:
                              'Keunggulan dalam kualitas jasa dapat menciptakan kepuasan pelanggan. Oleh karena itu '),
                      TextSpan(
                        text: 'Flashlight',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: semiBold,
                          color: AppColors.accentOrange,
                        ),
                      ),
                      const TextSpan(
                          text:
                              ' selalu berusaha maksimal untuk mencapai hasil yang terbaik.'),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppColors.darkGray,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: CustomerTypeModel.sosmedDataList.map(
                      (element) {
                        return SosmedCard(
                          imagePath: element['imagePath'].toString(),
                          title: element['title'].toString(),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),

          //* Right Section
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25.0),
              height: screenHeight,
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    'Pilih tipe customer',
                    style: GoogleFonts.poppins().copyWith(
                      color: AppColors.darkSlate,
                      fontWeight: semiBold,
                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SpaceHeight(25.0),

                  //* Customer Type Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: CustomerTypeModel.customerTypeList
                        .map((element) {
                          return CustomerTypeCard(
                            isSelected:
                                selectedTitle == element['title'].toString(),
                            onTap: () {
                              setState(() {
                                selectedTitle = element['title'].toString();
                              });
                            },
                            icon: element['icon'] as IconData,
                            title: element['title'].toString(),
                          );
                        })
                        .toList()
                        .expand((widget) => [widget, const SpaceWidth(20)])
                        .toList()
                      ..removeLast(),
                  ),

                  const SpaceHeight(30.0),
                  //* Start Order Button

                  Button.filled(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardPage(),
                        ),
                      );
                    },
                    label: 'Start Order',
                    width: 370,
                  ),

                  const Spacer(),
                ],
              ),
            ),
          ),
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