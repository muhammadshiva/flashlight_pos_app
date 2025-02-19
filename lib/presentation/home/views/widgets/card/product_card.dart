import 'package:cached_network_image/cached_network_image.dart';
import 'package:flashlight_pos_app/core/constant/api/api_base_url.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.isSelected = false,
    this.onTap,
  });

  final Product product;

  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.w,
            color: isSelected ? AppColors.accentOrange : Colors.white,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
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
                  child: CachedNetworkImage(
                    imageUrl: '${ApiBaseUrl.imageUrl}${product.image}',
                    height: 130.w,
                    width: 195.w,
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
                      text: '${product.name}\n',
                      style: TextStyle(
                        color: AppColors.darkGray,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                      ),
                    ),
                    TextSpan(
                      text: product.price.toString(),
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
      ),
    );
  }
}
