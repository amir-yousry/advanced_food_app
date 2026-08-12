import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:food_app/core/theme/colors.dart';
import 'package:food_app/shared/custom_text.dart';

class CustomAuthButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool? isIcon;

  const CustomAuthButton({super.key, this.onTap, required this.text, this.isIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomText(
                text: text,
                size: 14,
                weight: FontWeight.w400,
                color: AppColors.primary,
              ),
            ),
            if (isIcon == true) const Gap(10),
            if (isIcon == true)
              Icon(
                CupertinoIcons.person,
                color: Colors.grey.shade100,
                size: 16,
              ),
          ],
        ),
      ),
    );
  }
}
