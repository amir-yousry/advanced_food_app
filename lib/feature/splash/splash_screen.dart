import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            const Gap(220),
            SvgPicture.asset('assets/logo/logo.svg'),
            const Spacer(),
            Image.asset('assets/splash/splash.png'),
          ],
        ),
      ),
    );
  }
}
