part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.started() = _Started;
  const factory SettingEvent.selectSetting(int id) = _SelectSetting;
  const factory SettingEvent.selectTabPrinter(int id) = _SelectTabPrinter;
}
