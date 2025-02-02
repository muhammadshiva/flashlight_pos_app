import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/components/spaces.dart';
import 'package:flashlight_pos_app/core/constant/routes/route_constants.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/presentation/customer/models/customer_type_model.dart';
import 'package:flashlight_pos_app/presentation/customer/widgets/customer_type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerTypeSection extends StatefulWidget {
  const CustomerTypeSection({super.key});

  @override
  State<CustomerTypeSection> createState() => _CustomerTypeSectionState();
}

class _CustomerTypeSectionState extends State<CustomerTypeSection> {
  String selectedTitle = "";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(25.0),
      height: screenHeight,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        children: [
          const Spacer(),
          Text(
            'Choose Customer Type',
            style: GoogleFonts.poppins().copyWith(
              color: AppColors.darkSlate,
              fontWeight: semiBold,
              fontSize: 16.sp,
              decoration: TextDecoration.none,
            ),
          ),
          25.verticalSpace,

          //* Customer Type Card
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: CustomerTypeModel.customerTypeList
                .map((element) {
                  return CustomerTypeCard(
                    isSelected: selectedTitle == element['title'].toString(),
                    onTap: () {
                      setState(() {
                        selectedTitle = element['title'].toString();
                      });
                    },
                    icon: element['icon'] as IconData,
                    title: element['title'].toString(),
                  );
                })
                .toList()
                .expand((widget) => [widget, const SpaceWidth(20)])
                .toList()
              ..removeLast(),
          ),

          30.verticalSpace,
          //* Start Order Button

          Button.filled(
            onPressed: () {
              Navigator.pushNamed(
                context,
                RouteConstants.customerForm,
                // arguments: CustomerTypeArgument(
                //   customerType: selectedTitle,
                // ),
              );
            },
            label: 'Start Order',
            width: 370.w,
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
