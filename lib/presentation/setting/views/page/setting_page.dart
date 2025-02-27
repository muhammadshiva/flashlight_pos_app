import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/presentation/setting/bloc/setting_bloc.dart';
import 'package:flashlight_pos_app/presentation/setting/views/components/printer_menu.dart';
import 'package:flashlight_pos_app/presentation/setting/views/widgets/setting_menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: AppColors.primary,
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: BlocBuilder<SettingBloc, SettingState>(
          builder: (context, state) {
            return Row(
              spacing: 20.w,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    spacing: 20.w,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: state.listSettingMenu
                        .map(
                          (e) => SettingMenuCard(
                            title: e.title,
                            subtitle: e.subtitle,
                            icon: e.icon,
                            onTap: () => context
                                .read<SettingBloc>()
                                .add(SettingEvent.selectSetting(e.id)),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Container(
                  width: 1.w,
                  height: double.infinity,
                  color: Colors.black.withValues(
                    alpha: 0.1,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: state.idMenu == 1
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      state.idMenu == 1 ? Text('Sync Data') : PrinterMenu(),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
