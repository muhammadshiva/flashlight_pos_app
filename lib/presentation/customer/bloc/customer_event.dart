part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.started() = _Started;
  const factory CustomerEvent.customerDataChanged(
    String name,
    String phoneNumber,
  ) = _CustomerDataChanged;
  const factory CustomerEvent.vehicleDataChanged(
    String engineCapacity,
    String brand,
    String model,
    String licencePlate,
  ) = _VehicleDataChanged;
}
