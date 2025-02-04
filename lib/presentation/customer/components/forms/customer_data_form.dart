import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/core/utils/functions/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerDataForm extends StatelessWidget {
  const CustomerDataForm({
    super.key,
    required this.nameNode,
    required this.phoneNode,
    required this.nameCtrl,
    required this.phoneCtrl,
  });

  final FocusNode nameNode;
  final FocusNode phoneNode;
  final TextEditingController nameCtrl;
  final TextEditingController phoneCtrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: AppTextStyle.poppins.copyWith(
            color: AppColors.primary,
            fontSize: 12.sp,
          ),
        ),
        12.verticalSpace,
        TextFormField(
          focusNode: nameNode,
          controller: nameCtrl,
          decoration: AppDecoration.inputDecoration.copyWith(
            hintText: 'Input Name',
          ),
          validator: FormValidator.validateName,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        16.verticalSpace,
        Text(
          'Phone Number',
          style: AppTextStyle.poppins.copyWith(
            color: AppColors.primary,
            fontSize: 12.sp,
          ),
        ),
        12.verticalSpace,
        TextFormField(
          focusNode: phoneNode,
          controller: phoneCtrl,
          keyboardType: TextInputType.phone,
          decoration: AppDecoration.inputDecoration.copyWith(
            hintText: 'Input Phone Number',
          ),
          validator: FormValidator.validatePhoneNumber,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ],
    );
  }
}
