import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/components/custom_text_field.dart';
import 'package:flashlight_pos_app/core/components/spaces.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flutter/material.dart';

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
          Button.filled(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const CustomerTypePage(),
              //   ),
              // );
            },
            label: 'Masuk',
          ),
        ],
      ),
    );
  }
}
