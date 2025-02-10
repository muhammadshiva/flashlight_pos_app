import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flashlight_pos_app/presentation/home/data/datasources/product/product_remote_datasource.dart';
import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource productRemoteDatasource;

  ProductBloc(
    this.productRemoteDatasource,
  ) : super(const _Initial()) {
    on<_LoadProduct>(
      (event, emit) async {
        try {
          emit(const _Loading());

          final response = await productRemoteDatasource.getProduct();

          response.fold(
            (l) => emit(_Error(l)),
            (r) => emit(
              _Success(r.products ?? []),
            ),
          );
        } catch (e) {
          log('Product Error : ${e.toString()}');
        }
      },
    );
  }
}
