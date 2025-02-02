part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState({
    required String name,
    required String phone,
    required String engineCapacity,
    required String brand,
    required String model,
    required String licensePlate,
  }) = _CustomerState;

  factory CustomerState.initial() => const CustomerState(
        name: '',
        phone: '',
        engineCapacity: '',
        brand: '',
        model: '',
        licensePlate: '',
      );
}
