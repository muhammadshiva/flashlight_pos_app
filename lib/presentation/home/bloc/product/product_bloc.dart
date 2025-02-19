import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/presentation/home/data/datasources/product/product_remote_datasource.dart';
import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';
import 'package:flashlight_pos_app/presentation/home/views/models/category_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource productRemoteDatasource;

  ProductBloc(this.productRemoteDatasource) : super(const ProductState()) {
    on<_FetchCategories>(
      (event, emit) {
        final categories = [
          CategoryModel(
            imagePath: Assets.images.icMotobike.path,
            imagePathSelected: Assets.images.icMotobikeSelected.path,
            title: 'Clean Motobike',
          ),
          CategoryModel(
            imagePath: Assets.images.icHelmet.path,
            imagePathSelected: Assets.images.icHelmetSelected.path,
            title: 'Clean Helmet',
          ),
          CategoryModel(
            imagePath: Assets.images.icShoes.path,
            imagePathSelected: Assets.images.icShoesSelected.path,
            title: 'Clean Apparels',
          ),
          CategoryModel(
            imagePath: Assets.images.icFnb.path,
            imagePathSelected: Assets.images.icFnbSelected.path,
            title: 'Food & Beverages',
          ),
          CategoryModel(
            imagePath: Assets.images.icOther.path,
            imagePathSelected: Assets.images.icOtherSelected.path,
            title: 'Other',
          ),
        ];

        emit(
          state.copyWith(
            categories: categories,
            selectedCategory: categories.first.title,
          ),
        );
      },
    );

    on<_FetchProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));

        try {
          final response = await productRemoteDatasource.getProduct();

          response.fold(
            (l) => emit(state.copyWith(errorMessage: l, isLoading: false)),
            (r) {
              final selectedCategory = state.selectedCategory;

              final filteredProducts = r.products
                      ?.where((e) => e.category?.name == selectedCategory)
                      .toList() ??
                  [];

              emit(
                state.copyWith(
                  products: filteredProducts,
                  allProducts: r.products ?? [],
                  isLoading: false,
                ),
              );
            },
          );
        } catch (e) {
          log('Product Error : ${e.toString()}');
          emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
        }
      },
    );

    on<_SelectCategory>(
      (event, emit) {
        final filteredProducts = state.allProducts
            .where((e) => e.category?.name == event.category)
            .toList();

        emit(
          state.copyWith(
            selectedCategory: event.category,
            products: filteredProducts,
          ),
        );
      },
    );

    on<_SelectProduct>(
      (event, emit) {
        var updatedProducts = List<Product>.from(state.selectedProducts);

        if (updatedProducts.contains(event.product)) {
          updatedProducts.remove(event.product);
        } else {
          updatedProducts.add(event.product);
        }

        var totalPrice = updatedProducts.fold(
            0, (sum, product) => sum + (product.price ?? 0));

        emit(state.copyWith(
            selectedProducts: updatedProducts, totalPrice: totalPrice));
      },
    );

    on<_SelectPayment>(
      (event, emit) {
        emit(
          state.copyWith(
            selectedPayment: event.payment,
          ),
        );
      },
    );

    on<_SearchProduct>(
      (event, emit) {
        final keyword = event.keyword.trim().toLowerCase();

        if (keyword.isEmpty) {
          final firstCategory = state.categories.first.title;
          final filteredProducts = state.allProducts
              .where((e) => e.category?.name == firstCategory)
              .toList();

          emit(
            state.copyWith(
              selectedCategory: firstCategory,
              products: filteredProducts,
            ),
          );
        } else if (keyword.length >= 3) {
          final filteredProducts = state.allProducts
              .where((e) => (e.name ?? '').toLowerCase().contains(keyword))
              .toList();

          if (filteredProducts.isNotEmpty) {
            final firstFoundCategory =
                filteredProducts.first.category?.name ?? state.selectedCategory;

            emit(
              state.copyWith(
                selectedCategory: firstFoundCategory,
                products: filteredProducts,
              ),
            );
          } else {
            emit(state.copyWith(products: filteredProducts));
          }
        }
      },
    );
  }
}
