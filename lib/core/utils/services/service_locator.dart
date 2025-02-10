import 'package:flashlight_pos_app/presentation/home/bloc/product/product_bloc.dart';
import 'package:flashlight_pos_app/presentation/home/data/datasources/product/product_remote_datasource.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  //* Register datasource ------------------------- //
  //*
  //^ Product
  getIt.registerLazySingleton<ProductRemoteDatasource>(
      () => ProductRemoteDatasource());

  //* Register bloc with remote datasource ------------------------- //
  //*
  //^ Product
  getIt.registerFactory<ProductBloc>(
      () => ProductBloc(getIt<ProductRemoteDatasource>()));
}
