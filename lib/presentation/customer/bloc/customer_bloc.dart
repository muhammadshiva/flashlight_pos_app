import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  CustomerBloc() : super(CustomerState.initial()) {
    on<_CustomerDataChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            name: event.name,
            phone: event.phoneNumber,
          ),
        );
      },
    );

    on<_VehicleDataChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            engineCapacity: event.engineCapacity,
            brand: event.brand,
            model: event.model,
            licensePlate: event.licencePlate,
          ),
        );
      },
    );
  }
}
