import 'package:flutter/material.dart';
import 'package:food_app/core/routes/routes.dart';
import 'package:food_app/feature/cart/ui/cart_screen.dart';
import 'package:food_app/feature/checkout/ui/checkout_screen.dart';
import 'package:food_app/feature/home/ui/home_screen.dart';
import 'package:food_app/feature/login/ui/login_screen.dart';
import 'package:food_app/feature/product_details/ui/product_details_screen.dart';
import 'package:food_app/feature/profile/ui/profile_screen.dart';
import 'package:food_app/feature/sign_up/ui/sign_up_screen.dart';
import 'package:food_app/feature/splash/splash_screen.dart';
import 'package:food_app/feature/success_payment/ui/success_payment_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    //final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.productDetailesScreen:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      case Routes.cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case Routes.checkoutScreen:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      case Routes.successPaymentScreen:
        return MaterialPageRoute(builder: (_) => const SuccessPaymentScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      default:
        return null;
    }
  }
}
