import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerTypeCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected; // To check if this card is selected
  final VoidCallback onTap; // Callback to notify parent when tapped

  const CustomerTypeCard({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Call the parent's onTap method to manage the state
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected
              ? AppColors.accentOrange.withOpacity(0.3)
              : Colors.white, // Change color if selected
          border: Border.all(
            color: isSelected
                ? AppColors.accentOrange
                : AppColors.lightGray2, // Change border color if selected
          ),
        ),
        child: Column(
          children: [
            Icon(icon, size: 100),
            Text(
              title,
              style: GoogleFonts.poppins().copyWith(
                color: AppColors.darkSlate,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
