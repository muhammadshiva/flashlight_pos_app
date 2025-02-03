import 'package:flashlight_pos_app/core/assets/assets.gen.dart';
import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/constant/styles/app_decoration.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/core/utils/functions/form_validator.dart';
import 'package:flashlight_pos_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_local_datasource.dart';
import 'package:flashlight_pos_app/presentation/customer/pages/customer_type_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  late final FocusNode emailNode;
  late final FocusNode passwordNode;
  late final TextEditingController emailCtrl;
  late final TextEditingController passwordCtrl;
  bool isShowPassword = false;
  bool isPasswordFocus = false;

  @override
  void initState() {
    emailNode = FocusNode();
    passwordNode = FocusNode();
    emailCtrl = TextEditingController();
    passwordCtrl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailNode.dispose();
    passwordNode.dispose();
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 200.w, vertical: 16.w),
          children: [
            80.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.w),
              child: Image.asset(
                Assets.images.logoFlashlight.path,
                width: 100.w,
                height: 100.w,
              ),
            ),
            40.verticalSpace,
            Center(
              child: Text(
                "Login Cashier",
                style: AppTextStyle.poppins.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.lightWhite,
                ),
              ),
            ),
            20.verticalSpace,
            Text(
              'Email',
              style: AppTextStyle.poppins.copyWith(
                color: AppColors.lightWhite,
                fontSize: 12.sp,
              ),
            ),
            12.verticalSpace,
            TextFormField(
              focusNode: emailNode,
              controller: emailCtrl,
              decoration: AppDecoration.inputDecoration.copyWith(
                hintText: 'Input email',
              ),
              style: AppTextStyle.poppins.copyWith(
                color: AppColors.white,
              ),
              validator: FormValidator.validateEmail,
            ),
            20.verticalSpace,
            Text(
              'Password',
              style: AppTextStyle.poppins.copyWith(
                color: AppColors.lightWhite,
                fontSize: 12.sp,
              ),
            ),
            12.verticalSpace,
            Focus(
              onFocusChange: (hasFocus) {
                setState(() {
                  isPasswordFocus = hasFocus;
                });
              },
              child: TextFormField(
                focusNode: passwordNode,
                controller: passwordCtrl,
                obscureText: isShowPassword ? false : true,
                decoration: AppDecoration.inputDecoration.copyWith(
                  hintText: 'Input password',
                  suffixIcon: Transform.scale(
                    scale: ScreenUtil().setSp(1),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isShowPassword) {
                            isShowPassword = false;
                          } else {
                            isShowPassword = true;
                          }
                        });
                      },
                      child: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: !isShowPassword
                            ? Icon(
                                Icons.visibility_off,
                                color: isPasswordFocus
                                    ? AppColors.accentOrange
                                    : Colors.grey,
                              )
                            : Icon(
                                Icons.visibility,
                                color: isPasswordFocus
                                    ? AppColors.accentOrange
                                    : Colors.grey,
                              ),
                      ),
                    ),
                  ),
                ),
                style: AppTextStyle.poppins.copyWith(
                  color: AppColors.white,
                ),
                validator: FormValidator.validatePassword,
              ),
            ),
            40.verticalSpace,
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  success: (authResponseModel) async {
                    AuthLocalDatasource().saveAuthData(authResponseModel);

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
                          if (formKey.currentState!.validate()) {
                            context.read<LoginBloc>().add(
                                  LoginEvent.login(
                                    email: emailCtrl.text,
                                    password: passwordCtrl.text,
                                  ),
                                );
                          }
                        },
                        label: 'Login',
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
      ),
    );
  }
}
