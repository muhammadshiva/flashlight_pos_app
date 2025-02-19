import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ButtonStyle { filled, outlined }

class Button extends StatelessWidget {
  const Button.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
    this.color = AppColors.accentOrange,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = 6.0,
    this.icon,
    this.disabled = false,
    this.fontSize = 16.0,
    this.textStyle,
    this.borderColor = AppColors.accentOrange,
  });

  const Button.outlined({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.outlined,
    this.color = AppColors.white,
    this.textColor = AppColors.accentOrange,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius,
    this.icon,
    this.disabled = false,
    this.fontSize = 16.0,
    this.textStyle,
    this.borderColor = AppColors.accentOrange,
  });

  final Function() onPressed;
  final String label;
  final ButtonStyle style;
  final Color color;
  final Color? borderColor;
  final Color textColor;
  final double width;
  final double height;
  final double? borderRadius;
  final Widget? icon;
  final bool disabled;
  final double fontSize;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyle.filled
          ? ElevatedButton(
              onPressed: disabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 6.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: textStyle ??
                        AppTextStyle.barlow.copyWith(
                          color: textColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            )
          : OutlinedButton(
              onPressed: disabled ? null : onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                side: BorderSide(color: borderColor ?? Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 6.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: textStyle ??
                        AppTextStyle.barlow.copyWith(
                          color: textColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
    );
  }
}
