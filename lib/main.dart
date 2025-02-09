import 'package:flashlight_pos_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_local_datasource.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_remote_datasource.dart';
import 'package:flashlight_pos_app/presentation/auth/pages/login_page.dart';
import 'package:flashlight_pos_app/presentation/customer/bloc/customer_bloc.dart';
import 'package:flashlight_pos_app/presentation/customer/views/pages/customer_type_page.dart';
import 'package:flashlight_pos_app/presentation/home/bloc/logout_bloc.dart';
import 'package:flashlight_pos_app/presentation/splash/pages/splash_page.dart';
import 'package:flashlight_pos_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constant/styles/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    return ScreenUtilInit(
      designSize: const Size(1024, 768),
      minTextAdapt: false,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginBloc(AuthRemoteDatasouce()),
          ),
          BlocProvider(
            create: (context) => LogoutBloc(AuthRemoteDatasouce()),
          ),
          BlocProvider(create: (context) => CustomerBloc()),
        ],
        child: MaterialApp(
          title: 'Flashlight Point of Sales App',
          theme: ThemeData(
            useMaterial3: false,
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
            appBarTheme: AppBarTheme(
              color: AppColors.white,
              elevation: 0,
              titleTextStyle: GoogleFonts.quicksand(
                color: AppColors.primary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              iconTheme: const IconThemeData(
                color: AppColors.primary,
              ),
            ),
          ),
          home: FutureBuilder<bool>(
            future: AuthLocalDatasource().isAuth(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SplashPage();
              } else if (snapshot.hasData && snapshot.data == true) {
                return const CustomerTypePage();
              } else {
                return const LoginPage();
              }
            },
          ),
          onGenerateRoute: AppRouter().onGenerateRoute,
        ),
      ),
    );
  }
}
