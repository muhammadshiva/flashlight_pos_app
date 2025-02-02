import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_local_datasource.dart';
import 'package:flashlight_pos_app/presentation/auth/pages/login_page.dart';
import 'package:flashlight_pos_app/presentation/customer_type/data/domain/customer_type_argument.dart';
import 'package:flashlight_pos_app/presentation/home/bloc/logout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  final CustomerTypeArgument customerTypeArgument;

  const DashboardPage({super.key, required this.customerTypeArgument});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flashlight Cleanstar',
          style: GoogleFonts.barlow().copyWith(
            color: AppColors.white,
            fontWeight: bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: AppColors.primary,
        automaticallyImplyLeading: false,
        actions: [
          BlocBuilder<LogoutBloc, LogoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return IconButton(
                    onPressed: () async {
                      context
                          .read<LogoutBloc>()
                          .add(const LogoutEvent.logout());
                    },
                    icon: const Icon(Icons.logout),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: BlocListener<LogoutBloc, LogoutState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            success: (response) {
              AuthLocalDatasource().removeAuthData();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dashboard page',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Customer Type : ${customerTypeArgument.customerType}')
            ],
          ),
        ),
      ),
    );
  }
}
