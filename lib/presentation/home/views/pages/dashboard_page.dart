import 'package:flashlight_pos_app/core/utils/services/service_locator.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_local_datasource.dart';
import 'package:flashlight_pos_app/presentation/auth/pages/login_page.dart';
import 'package:flashlight_pos_app/presentation/home/bloc/logout/logout_bloc.dart';
import 'package:flashlight_pos_app/presentation/home/bloc/product/product_bloc.dart';
import 'package:flashlight_pos_app/presentation/home/views/components/dashboard_menu.dart';
import 'package:flashlight_pos_app/presentation/home/views/components/dashboard_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<ProductBloc>()
                ..add(const ProductEvent.fetchCategories())
                ..add(const ProductEvent.fetchProduct()),
            ),
          ],
          child: MultiBlocListener(
            listeners: [
              BlocListener<LogoutBloc, LogoutState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: (response) {
                      AuthLocalDatasource().removeAuthData();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
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
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ],
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.w, 24.w, 24.w, 0),
              child: Row(
                spacing: 20.w,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 3,
                    child: DashboardMenu(),
                  ),
                  Container(
                    width: 1.w,
                    height: double.infinity,
                    color: Colors.black.withValues(
                      alpha: 0.1,
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: DashboardOrder(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
