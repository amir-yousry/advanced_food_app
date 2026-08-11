import 'package:flutter/material.dart';
import 'package:food_app/core/routes/app_router.dart';
import 'package:food_app/food_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(FoodApp(appRouter: AppRouter()));
}
