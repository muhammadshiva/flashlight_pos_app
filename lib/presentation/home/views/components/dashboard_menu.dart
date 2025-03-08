import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/constant/routes/route_constants.dart';
import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/presentation/home/bloc/product/product_bloc.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/card/category_card.dart';
import 'package:flashlight_pos_app/presentation/home/views/widgets/card/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              spacing: 30.w,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteConstants.setting);
                      },
                      child: Image.asset(
                        Assets.images.icFlashlight.path,
                        height: 50.w,
                      ),
                    ),
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
                          color: Colors.black.withValues(alpha: 0.1),
                          offset: const Offset(0, 4),
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
                          ),
                        ),
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: Transform.scale(
                          scale: 0.5,
                          child: SvgPicture.asset(
                            Assets.icons.close.path,
                            colorFilter: const ColorFilter.mode(
                              AppColors.darkGray,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        context
                            .read<ProductBloc>()
                            .add(ProductEvent.searchProduct(value));
                      },
                    ),
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.categories.map((e) {
                  final isSelected = state.selectedCategory == e.title;

                  return CategoryCard(
                    imagePath: isSelected ? e.imagePathSelected : e.imagePath,
                    title: e.title,
                    isSelected: isSelected,
                    onTap: () => context
                        .read<ProductBloc>()
                        .add(ProductEvent.selectCategory(e.title)),
                  );
                }).toList(),
              ),
            ),
            Divider(thickness: 1.w, color: Colors.grey.withValues(alpha: 0.5)),
            15.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: () {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.errorMessage?.isNotEmpty ?? false) {
                    return Center(
                      child: Text(state.errorMessage ?? 'Terjadi kesalahan'),
                    );
                  } else if (state.products.isEmpty) {
                    return const Center(child: Text('No products'));
                  } else {
                    return Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 20.w,
                      runSpacing: 20.w,
                      children: state.products.map((product) {
                        return ProductCard(
                          onTap: () => context
                              .read<ProductBloc>()
                              .add(ProductEvent.selectProduct(product)),
                          product: product,
                          isSelected: state.selectedProducts.contains(product),
                        );
                      }).toList(),
                    );
                  }
                }(),
              ),
            ),
            20.verticalSpace,
          ],
        );
      },
    );
  }
}
