import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/components/custom_text_field.dart';
import 'package:flashlight_pos_app/core/components/spaces.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flashlight_pos_app/presentation/customer_type/pages/customer_type_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        children: [
          const SpaceHeight(80.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130),
            child: Image.asset(
              Assets.images.logoFlashlight.path,
              width: 100,
              height: 100,
            ),
          ),
          const SpaceHeight(40.0),
          Center(
            child: Text(
              "Masuk untuk kasir",
              style: barlow.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.lightWhite,
              ),
            ),
          ),
          const SpaceHeight(20.0),
          CustomTextField(
            controller: usernameController,
            label: 'Username',
            color: AppColors.lightWhite,
          ),
          const SpaceHeight(20.0),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
            color: AppColors.lightWhite,
          ),
          const SpaceHeight(40.0),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: (authResponseModel) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerTypePage(),
                    ),
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
              );
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Button.filled(
                      onPressed: () {
                        context.read<LoginBloc>().add(
                              LoginEvent.login(
                                email: usernameController.text,
                                password: passwordController.text,
                              ),
                            );
                      },
                      label: 'Masuk',
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
