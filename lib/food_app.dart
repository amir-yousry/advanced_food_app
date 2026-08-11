import 'package:flutter/material.dart';
import 'package:food_app/core/routes/app_router.dart';
import 'package:food_app/core/routes/routes.dart';

class FoodApp extends StatelessWidget {
  final AppRouter appRouter;
  const FoodApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      //initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
