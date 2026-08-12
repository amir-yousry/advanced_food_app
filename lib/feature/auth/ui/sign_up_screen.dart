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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
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
                      const Gap(30),
                      CustomTxtfield(
                        controller: nameController,
                        hint: 'Name',
                        isPassword: false,
                      ),
                      const Gap(8),
                      CustomTxtfield(
                        controller: emailController,
                        hint: 'Email Address',
                        isPassword: false,
                      ),
                      const Gap(8),
                      CustomTxtfield(
                        controller: passController,
                        hint: 'Password',
                        isPassword: true,
                      ),
                      const Gap(8),
                      CustomTxtfield(
                        controller: confirmPassController,
                        hint: 'Confirm Password',
                        isPassword: true,
                      ),
                      const Gap(20),

                      /// Sign up
                      CustomAuthButton(
                        text: 'Sign up',
                        isIcon: false,
                        onTap: () {
                          context.pushReplacementNamed(Routes.mainScreen);
                        },
                      ),
                    ],
                  ),
                ),
                const Gap(140),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushReplacementNamed(Routes.loginScreen);
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
