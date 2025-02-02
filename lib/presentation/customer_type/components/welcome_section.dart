import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/components/spaces.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/presentation/customer_type/models/customer_type_model.dart';
import 'package:flashlight_pos_app/presentation/customer_type/widgets/sosmed_card.dart';
import 'package:flutter/material.dart';
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
    );
  }
}
