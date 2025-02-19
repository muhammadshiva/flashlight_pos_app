part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.fetchProduct() = _FetchProduct;
  const factory ProductEvent.fetchByCategory(String category) =
      _FetchByCategory;
  const factory ProductEvent.fetchCategories() = _FetchCategories;
  const factory ProductEvent.selectCategory(String category) = _SelectCategory;
  const factory ProductEvent.selectProduct(Product product) = _SelectProduct;
  const factory ProductEvent.selectPayment(String payment) = _SelectPayment;
  const factory ProductEvent.searchProduct(String keyword) = _SearchProduct;
}
