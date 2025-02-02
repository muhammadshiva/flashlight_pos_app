import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool showLabel;
  final Widget? suffixIcon;
  final Color? color;
  final TextStyle? textStyle;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.showLabel = true,
    this.suffixIcon,
    this.color,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showLabel) ...[
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: color ?? Colors.black,
            ),
          ),
          12.verticalSpace,
        ],
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          style: textStyle ??
              AppTextStyle.barlow.copyWith(
                fontSize: 12.sp,
                color: color ?? Colors.black,
              ),
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            hintText: label,
            hintStyle: textStyle ??
                AppTextStyle.barlow.copyWith(
                  color: color ?? Colors.grey,
                ),
            labelStyle: textStyle ??
                AppTextStyle.barlow.copyWith(
                  color: color ?? Colors.grey,
                ),
          ),
        ),
      ],
    );
  }
}
