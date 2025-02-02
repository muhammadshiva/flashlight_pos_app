import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/presentation/customer/models/customer_type_model.dart';
import 'package:flashlight_pos_app/presentation/customer/widgets/sosmed_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.fromLTRB(60, 70, 60, 30),
      height: screenHeight,
      width: screenWidth * 0.55,
      color: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Assets.images.logoFlashlight.path, height: 109),
          50.verticalSpace,
          RichText(
            text: TextSpan(
              style: GoogleFonts.poppins().copyWith(
                fontSize: 70.sp,
                height: 0.9.w,
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
          30.verticalSpace,
          Text(
            'we provide high-quality of services',
            style: GoogleFonts.poppins().copyWith(
              color: AppColors.lightWhite,
              fontWeight: regular,
              fontSize: 20.sp,
              height: 1.2.w,
              decoration: TextDecoration.none,
            ),
          ),
          25.verticalSpace,
          RichText(
            text: TextSpan(
              style: GoogleFonts.poppins().copyWith(
                fontSize: 12.sp,
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
            height: 30.w,
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
    );
  }
}
