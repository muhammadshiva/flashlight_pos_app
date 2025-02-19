// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchProductImplCopyWith<$Res> {
  factory _$$FetchProductImplCopyWith(
          _$FetchProductImpl value, $Res Function(_$FetchProductImpl) then) =
      __$$FetchProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchProductImpl>
    implements _$$FetchProductImplCopyWith<$Res> {
  __$$FetchProductImplCopyWithImpl(
      _$FetchProductImpl _value, $Res Function(_$FetchProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchProductImpl with DiagnosticableTreeMixin implements _FetchProduct {
  const _$FetchProductImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.fetchProduct()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductEvent.fetchProduct'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return fetchProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return fetchProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchProduct implements ProductEvent {
  const factory _FetchProduct() = _$FetchProductImpl;
}

/// @nodoc
abstract class _$$FetchByCategoryImplCopyWith<$Res> {
  factory _$$FetchByCategoryImplCopyWith(_$FetchByCategoryImpl value,
          $Res Function(_$FetchByCategoryImpl) then) =
      __$$FetchByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FetchByCategoryImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchByCategoryImpl>
    implements _$$FetchByCategoryImplCopyWith<$Res> {
  __$$FetchByCategoryImplCopyWithImpl(
      _$FetchByCategoryImpl _value, $Res Function(_$FetchByCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FetchByCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchByCategoryImpl
    with DiagnosticableTreeMixin
    implements _FetchByCategory {
  const _$FetchByCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.fetchByCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.fetchByCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchByCategoryImplCopyWith<_$FetchByCategoryImpl> get copyWith =>
      __$$FetchByCategoryImplCopyWithImpl<_$FetchByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return fetchByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return fetchByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (fetchByCategory != null) {
      return fetchByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return fetchByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return fetchByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (fetchByCategory != null) {
      return fetchByCategory(this);
    }
    return orElse();
  }
}

abstract class _FetchByCategory implements ProductEvent {
  const factory _FetchByCategory(final String category) = _$FetchByCategoryImpl;

  String get category;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchByCategoryImplCopyWith<_$FetchByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCategoriesImplCopyWith<$Res> {
  factory _$$FetchCategoriesImplCopyWith(_$FetchCategoriesImpl value,
          $Res Function(_$FetchCategoriesImpl) then) =
      __$$FetchCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoriesImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchCategoriesImpl>
    implements _$$FetchCategoriesImplCopyWith<$Res> {
  __$$FetchCategoriesImplCopyWithImpl(
      _$FetchCategoriesImpl _value, $Res Function(_$FetchCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchCategoriesImpl
    with DiagnosticableTreeMixin
    implements _FetchCategories {
  const _$FetchCategoriesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.fetchCategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductEvent.fetchCategories'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return fetchCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return fetchCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return fetchCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class _FetchCategories implements ProductEvent {
  const factory _FetchCategories() = _$FetchCategoriesImpl;
}

/// @nodoc
abstract class _$$SelectCategoryImplCopyWith<$Res> {
  factory _$$SelectCategoryImplCopyWith(_$SelectCategoryImpl value,
          $Res Function(_$SelectCategoryImpl) then) =
      __$$SelectCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$SelectCategoryImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SelectCategoryImpl>
    implements _$$SelectCategoryImplCopyWith<$Res> {
  __$$SelectCategoryImplCopyWithImpl(
      _$SelectCategoryImpl _value, $Res Function(_$SelectCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$SelectCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCategoryImpl
    with DiagnosticableTreeMixin
    implements _SelectCategory {
  const _$SelectCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.selectCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.selectCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      __$$SelectCategoryImplCopyWithImpl<_$SelectCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements ProductEvent {
  const factory _SelectCategory(final String category) = _$SelectCategoryImpl;

  String get category;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectProductImplCopyWith<$Res> {
  factory _$$SelectProductImplCopyWith(
          _$SelectProductImpl value, $Res Function(_$SelectProductImpl) then) =
      __$$SelectProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$SelectProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SelectProductImpl>
    implements _$$SelectProductImplCopyWith<$Res> {
  __$$SelectProductImplCopyWithImpl(
      _$SelectProductImpl _value, $Res Function(_$SelectProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$SelectProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$SelectProductImpl
    with DiagnosticableTreeMixin
    implements _SelectProduct {
  const _$SelectProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.selectProduct(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.selectProduct'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectProductImplCopyWith<_$SelectProductImpl> get copyWith =>
      __$$SelectProductImplCopyWithImpl<_$SelectProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return selectProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return selectProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return selectProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return selectProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(this);
    }
    return orElse();
  }
}

abstract class _SelectProduct implements ProductEvent {
  const factory _SelectProduct(final Product product) = _$SelectProductImpl;

  Product get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectProductImplCopyWith<_$SelectProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPaymentImplCopyWith<$Res> {
  factory _$$SelectPaymentImplCopyWith(
          _$SelectPaymentImpl value, $Res Function(_$SelectPaymentImpl) then) =
      __$$SelectPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String payment});
}

/// @nodoc
class __$$SelectPaymentImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SelectPaymentImpl>
    implements _$$SelectPaymentImplCopyWith<$Res> {
  __$$SelectPaymentImplCopyWithImpl(
      _$SelectPaymentImpl _value, $Res Function(_$SelectPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$SelectPaymentImpl(
      null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectPaymentImpl
    with DiagnosticableTreeMixin
    implements _SelectPayment {
  const _$SelectPaymentImpl(this.payment);

  @override
  final String payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.selectPayment(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.selectPayment'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPaymentImpl &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPaymentImplCopyWith<_$SelectPaymentImpl> get copyWith =>
      __$$SelectPaymentImplCopyWithImpl<_$SelectPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return selectPayment(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return selectPayment?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (selectPayment != null) {
      return selectPayment(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return selectPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return selectPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (selectPayment != null) {
      return selectPayment(this);
    }
    return orElse();
  }
}

abstract class _SelectPayment implements ProductEvent {
  const factory _SelectPayment(final String payment) = _$SelectPaymentImpl;

  String get payment;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectPaymentImplCopyWith<_$SelectPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductImplCopyWith<$Res> {
  factory _$$SearchProductImplCopyWith(
          _$SearchProductImpl value, $Res Function(_$SearchProductImpl) then) =
      __$$SearchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$SearchProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchProductImpl>
    implements _$$SearchProductImplCopyWith<$Res> {
  __$$SearchProductImplCopyWithImpl(
      _$SearchProductImpl _value, $Res Function(_$SearchProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$SearchProductImpl(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductImpl
    with DiagnosticableTreeMixin
    implements _SearchProduct {
  const _$SearchProductImpl(this.keyword);

  @override
  final String keyword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.searchProduct(keyword: $keyword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.searchProduct'))
      ..add(DiagnosticsProperty('keyword', keyword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      __$$SearchProductImplCopyWithImpl<_$SearchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchProduct,
    required TResult Function(String category) fetchByCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String category) selectCategory,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String payment) selectPayment,
    required TResult Function(String keyword) searchProduct,
  }) {
    return searchProduct(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchProduct,
    TResult? Function(String category)? fetchByCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String category)? selectCategory,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String payment)? selectPayment,
    TResult? Function(String keyword)? searchProduct,
  }) {
    return searchProduct?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchProduct,
    TResult Function(String category)? fetchByCategory,
    TResult Function()? fetchCategories,
    TResult Function(String category)? selectCategory,
    TResult Function(Product product)? selectProduct,
    TResult Function(String payment)? selectPayment,
    TResult Function(String keyword)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_SelectPayment value) selectPayment,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_SelectPayment value)? selectPayment,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_SelectPayment value)? selectPayment,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class _SearchProduct implements ProductEvent {
  const factory _SearchProduct(final String keyword) = _$SearchProductImpl;

  String get keyword;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  List<Product> get products => throw _privateConstructorUsedError;
  List<Product> get allProducts => throw _privateConstructorUsedError;
  List<Product> get selectedProducts => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;
  String? get selectedPayment => throw _privateConstructorUsedError;
  int? get totalPrice => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {List<Product> products,
      List<Product> allProducts,
      List<Product> selectedProducts,
      List<CategoryModel> categories,
      String? errorMessage,
      String? selectedCategory,
      String? selectedPayment,
      int? totalPrice,
      bool isLoading});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? allProducts = null,
    Object? selectedProducts = null,
    Object? categories = null,
    Object? errorMessage = freezed,
    Object? selectedCategory = freezed,
    Object? selectedPayment = freezed,
    Object? totalPrice = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      allProducts: null == allProducts
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedProducts: null == selectedProducts
          ? _value.selectedProducts
          : selectedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPayment: freezed == selectedPayment
          ? _value.selectedPayment
          : selectedPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> products,
      List<Product> allProducts,
      List<Product> selectedProducts,
      List<CategoryModel> categories,
      String? errorMessage,
      String? selectedCategory,
      String? selectedPayment,
      int? totalPrice,
      bool isLoading});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? allProducts = null,
    Object? selectedProducts = null,
    Object? categories = null,
    Object? errorMessage = freezed,
    Object? selectedCategory = freezed,
    Object? selectedPayment = freezed,
    Object? totalPrice = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$ProductStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      allProducts: null == allProducts
          ? _value._allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedProducts: null == selectedProducts
          ? _value._selectedProducts
          : selectedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPayment: freezed == selectedPayment
          ? _value.selectedPayment
          : selectedPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl with DiagnosticableTreeMixin implements _ProductState {
  const _$ProductStateImpl(
      {final List<Product> products = const [],
      final List<Product> allProducts = const [],
      final List<Product> selectedProducts = const [],
      final List<CategoryModel> categories = const [],
      this.errorMessage,
      this.selectedCategory,
      this.selectedPayment,
      this.totalPrice,
      this.isLoading = false})
      : _products = products,
        _allProducts = allProducts,
        _selectedProducts = selectedProducts,
        _categories = categories;

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Product> _allProducts;
  @override
  @JsonKey()
  List<Product> get allProducts {
    if (_allProducts is EqualUnmodifiableListView) return _allProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProducts);
  }

  final List<Product> _selectedProducts;
  @override
  @JsonKey()
  List<Product> get selectedProducts {
    if (_selectedProducts is EqualUnmodifiableListView)
      return _selectedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedProducts);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? errorMessage;
  @override
  final String? selectedCategory;
  @override
  final String? selectedPayment;
  @override
  final int? totalPrice;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState(products: $products, allProducts: $allProducts, selectedProducts: $selectedProducts, categories: $categories, errorMessage: $errorMessage, selectedCategory: $selectedCategory, selectedPayment: $selectedPayment, totalPrice: $totalPrice, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('allProducts', allProducts))
      ..add(DiagnosticsProperty('selectedProducts', selectedProducts))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('selectedCategory', selectedCategory))
      ..add(DiagnosticsProperty('selectedPayment', selectedPayment))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._allProducts, _allProducts) &&
            const DeepCollectionEquality()
                .equals(other._selectedProducts, _selectedProducts) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.selectedPayment, selectedPayment) ||
                other.selectedPayment == selectedPayment) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_allProducts),
      const DeepCollectionEquality().hash(_selectedProducts),
      const DeepCollectionEquality().hash(_categories),
      errorMessage,
      selectedCategory,
      selectedPayment,
      totalPrice,
      isLoading);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final List<Product> products,
      final List<Product> allProducts,
      final List<Product> selectedProducts,
      final List<CategoryModel> categories,
      final String? errorMessage,
      final String? selectedCategory,
      final String? selectedPayment,
      final int? totalPrice,
      final bool isLoading}) = _$ProductStateImpl;

  @override
  List<Product> get products;
  @override
  List<Product> get allProducts;
  @override
  List<Product> get selectedProducts;
  @override
  List<CategoryModel> get categories;
  @override
  String? get errorMessage;
  @override
  String? get selectedCategory;
  @override
  String? get selectedPayment;
  @override
  int? get totalPrice;
  @override
  bool get isLoading;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
