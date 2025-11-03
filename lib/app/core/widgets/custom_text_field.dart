import 'package:flutter/material.dart';
import 'package:rental_test/app/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.onTap,
    this.readOnly,
    this.suffixIcon,
  });

  final String hintText;
  final VoidCallback onTap;
  final bool? readOnly;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.lineColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.lineColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.lineColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.greenColor),
        ),
      ),
      onTap: onTap,
    );
  }
}
