import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/theme/colors.dart';
import 'package:food_app/shared/custom_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List category = ['All', 'Combo', 'Sliders', 'Classic', 'Hot'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                /// Header
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/logo/logo.svg',
                          height: 35,
                          colorFilter: ColorFilter.mode(
                            AppColors.primary,
                            BlendMode.srcIn,
                          ),
                        ),
                        const Gap(5),
                        CustomText(
                          text: 'Hello, Mr. Amir',
                          size: 15,
                          weight: FontWeight.w500,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(radius: 30),
                  ],
                ),

                const Gap(25),

                /// Search Bar
                Material(
                  elevation: 2,
                  shadowColor: Colors.grey,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(CupertinoIcons.search),

                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                const Gap(25),

                /// Category
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Chip(
                          label: CustomText(
                            text: category[index],
                            size: 14,
                            weight: FontWeight.w500,
                          ),
                          backgroundColor: Colors.grey.shade200,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
