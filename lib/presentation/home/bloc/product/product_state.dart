part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default([]) List<Product> products,
    @Default([]) List<Product> allProducts,
    @Default([]) List<Product> selectedProducts,
    @Default([]) List<CategoryModel> categories,
    String? errorMessage,
    String? selectedCategory,
    String? selectedPayment,
    int? totalPrice,
    @Default(false) bool isLoading,
  }) = _ProductState;
}
