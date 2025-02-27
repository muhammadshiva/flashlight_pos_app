part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(0) int idMenu,
    @Default(0) int idTabPrinter,
    @Default([]) List<String> tabPrinterLabels,
    @Default([]) List<SettingMenuModel> listSettingMenu,
  }) = _SettingState;
}
