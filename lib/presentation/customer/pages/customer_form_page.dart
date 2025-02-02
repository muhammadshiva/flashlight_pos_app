import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/core/utils/functions/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerFormPage extends StatefulWidget {
  const CustomerFormPage({super.key});

  @override
  State<CustomerFormPage> createState() => _CustomerFormPageState();
}

class _CustomerFormPageState extends State<CustomerFormPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flashlight Cleanstar',
          style: AppTextStyle.barlow.copyWith(
            color: AppColors.white,
            fontWeight: bold,
            fontSize: 14.sp,
          ),
        ),
        backgroundColor: AppColors.primary,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 200.w),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Input Your Data',
                  style: AppTextStyle.poppins.copyWith(
                    color: AppColors.primary,
                    fontSize: 18.sp,
                    fontWeight: bold,
                  ),
                ),
                20.verticalSpace,
                Text(
                  'Name',
                  style: AppTextStyle.poppins.copyWith(
                    color: AppColors.primary,
                    fontSize: 14.sp,
                    // fontWeight: bold,
                  ),
                ),
                12.verticalSpace,
                TextFormField(
                  controller: nameController,
                  decoration: AppDecoration.inputDecoration.copyWith(
                    hintText: 'Input Name',
                  ),
                  validator: (value) => FormValidator.validateName(value),
                  // validator: FormValidator.validateName,
                ),
                12.verticalSpace,
                Text(
                  'Phone Number',
                  style: AppTextStyle.poppins.copyWith(
                    color: AppColors.primary,
                    fontSize: 14.sp,
                    // fontWeight: bold,
                  ),
                ),
                12.verticalSpace,
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.phone,
                  decoration: AppDecoration.inputDecoration.copyWith(
                    hintText: 'Input Phone Number',
                  ),
                  validator: (value) => FormValidator.validateName(value),
                  // validator: FormValidator.validateName,
                ),

                // ElevatedButton(
                //   onPressed: () {
                //     if (formKey.currentState!.validate()) {
                //       ScaffoldMessenger.of(context).showSnackBar(
                //         const SnackBar(content: Text("Form Valid!")),
                //       );
                //     }
                //   },
                //   child: const Text("Submit"),
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20.w),
        child: Button.filled(
          onPressed: () {
            // Navigator.pushNamed(
            //   context,
            //   RouteConstants.customerForm,
            //   // arguments: CustomerTypeArgument(
            //   //   customerType: selectedTitle,
            //   // ),
            // );
          },
          label: 'Start Order',
          width: 370.w,
        ),
      ),
    );
  }
}
