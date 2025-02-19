import 'enum_values.dart';

enum PaymentMethodType {
  debit,
  cash,
  qris,
}

final paymentMethodTypeValues = EnumValues({
  "Debit": PaymentMethodType.debit,
  "Cash": PaymentMethodType.cash,
  "QRIS": PaymentMethodType.qris,
});
