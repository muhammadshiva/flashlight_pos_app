import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/core/utils/functions/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerVehicleForm extends StatelessWidget {
  const CustomerVehicleForm({
    super.key,
    this.engineCapacity,
    this.brand,
    this.model,
    required this.licensePlateNode,
    required this.licensePlateCtrl,
  });

  final void Function(String?)? engineCapacity;
  final void Function(String?)? brand;
  final void Function(String?)? model;
  final FocusNode licensePlateNode;
  final TextEditingController licensePlateCtrl;

  @override
  Widget build(BuildContext context) {
    List<String> categories = ['100 CC', '200 CC', '600 CC'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: AppTextStyle.poppins.copyWith(
            color: AppColors.primary,
            fontSize: 12.sp,
            // fontWeight: bold,
          ),
        ),
        12.verticalSpace,
        DropdownButtonFormField(
          decoration: AppDecoration.inputDecoration,
          hint: Text(
            'Choose engine capacity',
            style: AppTextStyle.poppins.copyWith(
              fontSize: 12.sp,
              color: Colors.grey,
            ),
          ),
          validator: (value) {
            if (value == null) {
              return "Engine capacity cannot be blank";
            }
            return null;
          },
          items: categories.map((category) {
            return DropdownMenuItem(
              value: category,
              child: Text(
                category,
                style: AppTextStyle.poppins.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.primary,
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {},
        ),
        12.verticalSpace,
        Text(
          'Brand',
          style: AppTextStyle.poppins.copyWith(
            color: AppColors.primary,
            fontSize: 12.sp,
            // fontWeight: bold,
          ),
        ),
        12.verticalSpace,
        DropdownButtonFormField(
          decoration: AppDecoration.inputDecoration,
          hint: Text(
            'Choose brand',
            style: AppTextStyle.poppins.copyWith(
              fontSize: 12.sp,
              color: Colors.grey,
            ),
          ),
          validator: (value) {
            if (value == null) {
              return "Brand cannot be blank";
            }
            return null;
          },
          items: categories.map((category) {
            return DropdownMenuItem(
              value: category,
              child: Text(
                category,
                style: AppTextStyle.poppins.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.primary,
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {},
        ),
        12.verticalSpace,
        Text(
          'Model',
          style: AppTextStyle.poppins.copyWith(
            color: AppColors.primary,
            fontSize: 12.sp,
            // fontWeight: bold,
          ),
        ),
        12.verticalSpace,
        DropdownButtonFormField(
          decoration: AppDecoration.inputDecoration,
          hint: Text(
            'Choose model',
            style: AppTextStyle.poppins.copyWith(
              fontSize: 12.sp,
              color: Colors.grey,
            ),
          ),
          validator: (value) {
            if (value == null) {
              return "Model cannot be blank";
            }
            return null;
          },
          items: categories.map((category) {
            return DropdownMenuItem(
              value: category,
              child: Text(
                category,
                style: AppTextStyle.poppins.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.primary,
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {},
        ),
        12.verticalSpace,
        Text(
          'License plate',
          style: AppTextStyle.poppins.copyWith(
            color: AppColors.primary,
            fontSize: 12.sp,
            // fontWeight: bold,
          ),
        ),
        12.verticalSpace,
        TextFormField(
          focusNode: licensePlateNode,
          controller: licensePlateCtrl,
          decoration: AppDecoration.inputDecoration.copyWith(
            hintText: 'Input license plate. Ex: N 1234 ZZZ',
          ),
          validator: FormValidator.validateName,
          // validator: FormValidator.validateName,
        ),
      ],
    );
  }
}
