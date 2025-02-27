import 'package:bloc/bloc.dart';
import 'package:flashlight_pos_app/presentation/setting/views/model/setting_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(const SettingState()) {
    on<_Started>(
      (event, emit) {
        final tabPrinterLables = ["Search", "Disconnect", "Test"];

        final listSettingMenu = [
          SettingMenuModel(
            id: 1,
            title: 'Sync Data',
            subtitle: 'Synchronize data from and to server',
            icon: Icons.sync,
          ),
          SettingMenuModel(
            id: 2,
            title: 'Manage Printers',
            subtitle: 'Add or remove printers',
            icon: Icons.print_outlined,
          ),
        ];

        emit(
          state.copyWith(
            idMenu: 1,
            idTabPrinter: 0,
            tabPrinterLabels: tabPrinterLables,
            listSettingMenu: listSettingMenu,
          ),
        );
      },
    );

    on<_SelectSetting>(
      (event, emit) {
        emit(state.copyWith(idMenu: event.id));
      },
    );

    on<_SelectTabPrinter>(
      (event, emit) {
        emit(
          state.copyWith(
            idTabPrinter: event.id,
          ),
        );
      },
    );
  }
}
