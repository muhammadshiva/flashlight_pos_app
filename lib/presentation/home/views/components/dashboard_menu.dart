import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 30.w,
          children: [
            Row(
              children: [
                Image.asset(Assets.images.icFlashlight.path, height: 50.w),
                10.horizontalSpace,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'FLASHLIGHT CLEANSTAR\n',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'THE BEST STAR TO SERVICE ★★★\n',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          fontSize: 12.sp,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Monday, 4 February 2025',
                        style: TextStyle(
                          color: AppColors.darkGray,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 4),
                      blurRadius: 20,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: AppDecoration.inputDecoration.copyWith(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.r),
                        )),
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        Assets.icons.close.path,
                        color: AppColors.darkGray,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        20.verticalSpace,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              categoryCard(
                imagePath: Assets.images.icMotobikeSelected.path,
                title: 'Clean Motobike',
                isSelected: true,
              ),
              categoryCard(
                imagePath: Assets.images.icHelmet.path,
                title: 'Clean Helmet',
              ),
              categoryCard(
                imagePath: Assets.images.icShoes.path,
                title: 'Clean Apparels',
              ),
              categoryCard(
                imagePath: Assets.images.icFnb.path,
                title: 'Food & Beverages',
              ),
              categoryCard(
                imagePath: Assets.images.icOther.path,
                title: 'Other',
              ),
            ],
          ),
        ),
        Divider(thickness: 1.w, color: Colors.grey.withOpacity(0.5)),
        15.verticalSpace,
        Expanded(
          child: SingleChildScrollView(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20.w,
              runSpacing: 20.w,
              children: List.generate(
                12,
                (index) {
                  return productCard(
                    isSelected: index == 0 ? true : false,
                    title: 'Clean Motobike',
                    value: 'Rp. ${index * 100000}',
                  );
                },
              ),
            ),
          ),
        ),
        20.verticalSpace,
      ],
    );
  }

  Widget categoryCard({
    required String imagePath,
    required String title,
    bool isSelected = false,
  }) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.w, 10.w, 10.w, 10.w),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: isSelected ? AppColors.accentOrange : AppColors.white,
        border: Border.all(
          color: isSelected ? AppColors.accentOrange : Colors.transparent,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 10.r,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          spacing: 8.w,
          children: [
            Image.asset(imagePath, height: 10.w),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? AppColors.white : AppColors.primary,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productCard({
    required String title,
    required String value,
    bool isSelected = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: isSelected ? AppColors.accentOrange : Colors.white,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 10.r,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6.r),
                  topRight: Radius.circular(6.r),
                ),
                child: Image.asset(
                  Assets.images.imgProduct.path,
                  height: 130.w,
                ),
              ),
              if (isSelected)
                Padding(
                  padding: EdgeInsets.all(5.w),
                  child: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: AppColors.accentOrange,
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 12.w,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$title\n',
                    style: TextStyle(
                      color: AppColors.darkGray,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                  TextSpan(
                    text: value,
                    style: TextStyle(
                      color: AppColors.accentOrange,
                      fontWeight: FontWeight.w700,
                      fontSize: 10.sp,
                      height: 1.5.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
