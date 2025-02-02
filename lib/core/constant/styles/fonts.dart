import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle poppins = GoogleFonts.poppins(
    color: AppColors.lightWhite,
    decoration: TextDecoration.none,
  );

  static TextStyle barlow = GoogleFonts.barlow(
    color: AppColors.lightWhite,
    decoration: TextDecoration.none,
  );
}

const FontWeight light = FontWeight.w300; // Light
const FontWeight regular = FontWeight.w400; // Regular
const FontWeight medium = FontWeight.w500; // Medium
const FontWeight semiBold = FontWeight.w600; // Semibold
const FontWeight bold = FontWeight.w700; // Bold
const FontWeight extraBold = FontWeight.w800; // Extrabold
const FontWeight black = FontWeight.w900; // Black