import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/presentation/setting/bloc/setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrinterTab extends StatelessWidget {
  const PrinterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              state.tabPrinterLabels.length,
              (index) {
                return GestureDetector(
                  onTap: () => context
                      .read<SettingBloc>()
                      .add(SettingEvent.selectTabPrinter(index)),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                    decoration: BoxDecoration(
                      color: state.idTabPrinter == index
                          ? AppColors.accentOrange
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: state.idTabPrinter == index
                          ? [
                              const BoxShadow(
                                color: Colors.black26,
                                blurRadius: 2,
                              ),
                            ]
                          : [],
                    ),
                    child: Text(
                      state.tabPrinterLabels[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: state.idTabPrinter == index
                            ? FontWeight.w600
                            : FontWeight.w500,
                        color: state.idTabPrinter == index
                            ? AppColors.white
                            : Colors.black54,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
