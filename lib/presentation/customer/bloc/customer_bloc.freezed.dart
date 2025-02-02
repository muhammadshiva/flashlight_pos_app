// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String phoneNumber)
        customerDataChanged,
    required TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)
        vehicleDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phoneNumber)? customerDataChanged,
    TResult? Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phoneNumber)? customerDataChanged,
    TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
    required TResult Function(_VehicleDataChanged value) vehicleDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
    TResult? Function(_VehicleDataChanged value)? vehicleDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    TResult Function(_VehicleDataChanged value)? vehicleDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CustomerEvent.started()';
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
    required TResult Function(String name, String phoneNumber)
        customerDataChanged,
    required TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)
        vehicleDataChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phoneNumber)? customerDataChanged,
    TResult? Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phoneNumber)? customerDataChanged,
    TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
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
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
    required TResult Function(_VehicleDataChanged value) vehicleDataChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
    TResult? Function(_VehicleDataChanged value)? vehicleDataChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    TResult Function(_VehicleDataChanged value)? vehicleDataChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CustomerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CustomerDataChangedImplCopyWith<$Res> {
  factory _$$CustomerDataChangedImplCopyWith(_$CustomerDataChangedImpl value,
          $Res Function(_$CustomerDataChangedImpl) then) =
      __$$CustomerDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String phoneNumber});
}

/// @nodoc
class __$$CustomerDataChangedImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$CustomerDataChangedImpl>
    implements _$$CustomerDataChangedImplCopyWith<$Res> {
  __$$CustomerDataChangedImplCopyWithImpl(_$CustomerDataChangedImpl _value,
      $Res Function(_$CustomerDataChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$CustomerDataChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomerDataChangedImpl implements _CustomerDataChanged {
  const _$CustomerDataChangedImpl(this.name, this.phoneNumber);

  @override
  final String name;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'CustomerEvent.customerDataChanged(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDataChangedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDataChangedImplCopyWith<_$CustomerDataChangedImpl> get copyWith =>
      __$$CustomerDataChangedImplCopyWithImpl<_$CustomerDataChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String phoneNumber)
        customerDataChanged,
    required TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)
        vehicleDataChanged,
  }) {
    return customerDataChanged(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phoneNumber)? customerDataChanged,
    TResult? Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
  }) {
    return customerDataChanged?.call(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phoneNumber)? customerDataChanged,
    TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
    required TResult orElse(),
  }) {
    if (customerDataChanged != null) {
      return customerDataChanged(name, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
    required TResult Function(_VehicleDataChanged value) vehicleDataChanged,
  }) {
    return customerDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
    TResult? Function(_VehicleDataChanged value)? vehicleDataChanged,
  }) {
    return customerDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    TResult Function(_VehicleDataChanged value)? vehicleDataChanged,
    required TResult orElse(),
  }) {
    if (customerDataChanged != null) {
      return customerDataChanged(this);
    }
    return orElse();
  }
}

abstract class _CustomerDataChanged implements CustomerEvent {
  const factory _CustomerDataChanged(
      final String name, final String phoneNumber) = _$CustomerDataChangedImpl;

  String get name;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$CustomerDataChangedImplCopyWith<_$CustomerDataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleDataChangedImplCopyWith<$Res> {
  factory _$$VehicleDataChangedImplCopyWith(_$VehicleDataChangedImpl value,
          $Res Function(_$VehicleDataChangedImpl) then) =
      __$$VehicleDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String engineCapacity, String brand, String model, String licencePlate});
}

/// @nodoc
class __$$VehicleDataChangedImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$VehicleDataChangedImpl>
    implements _$$VehicleDataChangedImplCopyWith<$Res> {
  __$$VehicleDataChangedImplCopyWithImpl(_$VehicleDataChangedImpl _value,
      $Res Function(_$VehicleDataChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engineCapacity = null,
    Object? brand = null,
    Object? model = null,
    Object? licencePlate = null,
  }) {
    return _then(_$VehicleDataChangedImpl(
      null == engineCapacity
          ? _value.engineCapacity
          : engineCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      null == licencePlate
          ? _value.licencePlate
          : licencePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleDataChangedImpl implements _VehicleDataChanged {
  const _$VehicleDataChangedImpl(
      this.engineCapacity, this.brand, this.model, this.licencePlate);

  @override
  final String engineCapacity;
  @override
  final String brand;
  @override
  final String model;
  @override
  final String licencePlate;

  @override
  String toString() {
    return 'CustomerEvent.vehicleDataChanged(engineCapacity: $engineCapacity, brand: $brand, model: $model, licencePlate: $licencePlate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDataChangedImpl &&
            (identical(other.engineCapacity, engineCapacity) ||
                other.engineCapacity == engineCapacity) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.licencePlate, licencePlate) ||
                other.licencePlate == licencePlate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, engineCapacity, brand, model, licencePlate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDataChangedImplCopyWith<_$VehicleDataChangedImpl> get copyWith =>
      __$$VehicleDataChangedImplCopyWithImpl<_$VehicleDataChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String phoneNumber)
        customerDataChanged,
    required TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)
        vehicleDataChanged,
  }) {
    return vehicleDataChanged(engineCapacity, brand, model, licencePlate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phoneNumber)? customerDataChanged,
    TResult? Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
  }) {
    return vehicleDataChanged?.call(engineCapacity, brand, model, licencePlate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phoneNumber)? customerDataChanged,
    TResult Function(String engineCapacity, String brand, String model,
            String licencePlate)?
        vehicleDataChanged,
    required TResult orElse(),
  }) {
    if (vehicleDataChanged != null) {
      return vehicleDataChanged(engineCapacity, brand, model, licencePlate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
    required TResult Function(_VehicleDataChanged value) vehicleDataChanged,
  }) {
    return vehicleDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
    TResult? Function(_VehicleDataChanged value)? vehicleDataChanged,
  }) {
    return vehicleDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    TResult Function(_VehicleDataChanged value)? vehicleDataChanged,
    required TResult orElse(),
  }) {
    if (vehicleDataChanged != null) {
      return vehicleDataChanged(this);
    }
    return orElse();
  }
}

abstract class _VehicleDataChanged implements CustomerEvent {
  const factory _VehicleDataChanged(
      final String engineCapacity,
      final String brand,
      final String model,
      final String licencePlate) = _$VehicleDataChangedImpl;

  String get engineCapacity;
  String get brand;
  String get model;
  String get licencePlate;
  @JsonKey(ignore: true)
  _$$VehicleDataChangedImplCopyWith<_$VehicleDataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerState {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get engineCapacity => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call(
      {String name,
      String phone,
      String engineCapacity,
      String brand,
      String model,
      String licensePlate});
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? engineCapacity = null,
    Object? brand = null,
    Object? model = null,
    Object? licensePlate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      engineCapacity: null == engineCapacity
          ? _value.engineCapacity
          : engineCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerStateImplCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$CustomerStateImplCopyWith(
          _$CustomerStateImpl value, $Res Function(_$CustomerStateImpl) then) =
      __$$CustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      String engineCapacity,
      String brand,
      String model,
      String licensePlate});
}

/// @nodoc
class __$$CustomerStateImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$CustomerStateImpl>
    implements _$$CustomerStateImplCopyWith<$Res> {
  __$$CustomerStateImplCopyWithImpl(
      _$CustomerStateImpl _value, $Res Function(_$CustomerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? engineCapacity = null,
    Object? brand = null,
    Object? model = null,
    Object? licensePlate = null,
  }) {
    return _then(_$CustomerStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      engineCapacity: null == engineCapacity
          ? _value.engineCapacity
          : engineCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomerStateImpl implements _CustomerState {
  const _$CustomerStateImpl(
      {required this.name,
      required this.phone,
      required this.engineCapacity,
      required this.brand,
      required this.model,
      required this.licensePlate});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String engineCapacity;
  @override
  final String brand;
  @override
  final String model;
  @override
  final String licensePlate;

  @override
  String toString() {
    return 'CustomerState(name: $name, phone: $phone, engineCapacity: $engineCapacity, brand: $brand, model: $model, licensePlate: $licensePlate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.engineCapacity, engineCapacity) ||
                other.engineCapacity == engineCapacity) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, phone, engineCapacity, brand, model, licensePlate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      __$$CustomerStateImplCopyWithImpl<_$CustomerStateImpl>(this, _$identity);
}

abstract class _CustomerState implements CustomerState {
  const factory _CustomerState(
      {required final String name,
      required final String phone,
      required final String engineCapacity,
      required final String brand,
      required final String model,
      required final String licensePlate}) = _$CustomerStateImpl;

  @override
  String get name;
  @override
  String get phone;
  @override
  String get engineCapacity;
  @override
  String get brand;
  @override
  String get model;
  @override
  String get licensePlate;
  @override
  @JsonKey(ignore: true)
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
