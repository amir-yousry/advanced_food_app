import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/helpers/extensions.dart';
import 'package:food_app/core/routes/routes.dart';
import 'package:food_app/core/theme/colors.dart';
import 'package:food_app/feature/auth/ui/widgets/custom_auth_button.dart';
import 'package:food_app/shared/custom_text.dart';
import 'package:food_app/shared/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController(text: 'richsonic@gmail.com');
  final passController = TextEditingController(text: '123456789');
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(100),
                SvgPicture.asset('assets/logo/logo.svg'),
                const Gap(10),
                const CustomText(
                  text: 'Welcome Back, Discover The Fast Food',
                  color: Colors.white70,
                  size: 13,
                  weight: FontWeight.w500,
                ),
                const Gap(50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      CustomTxtfield(
                        controller: emailController,
                        hint: 'Email Address',
                        isPassword: false,
                      ),
                      const Gap(10),
                      CustomTxtfield(
                        controller: passController,
                        hint: 'Password',
                        isPassword: true,
                      ),
                      const Gap(20),

                      /// login
                      CustomAuthButton(text: 'Login', onTap: () {}),
                    ],
                  ),
                ),
                const Gap(270),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushReplacementNamed(Routes.signUpScreen);
                          },
                      ),
                    ],
                  ),
                ),
                Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
