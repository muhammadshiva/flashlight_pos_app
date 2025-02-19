import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SosmedCard extends StatelessWidget {
  const SosmedCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath, width: 15),
        20.horizontalSpace,
        Text(
          title,
          style: GoogleFonts.poppins().copyWith(
            fontWeight: medium,
            color: AppColors.mediumGray,
            decoration: TextDecoration.none,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
