import 'package:blogify/Features/Auth/presentation/pages/Signin_page.dart';
import 'package:blogify/Features/Auth/presentation/pages/Signup_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // Define route names as constants
  //static const String home = '/';
  static const String signin = '/signin';
  static const String signup = '/signup';

  // Route generator function
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case home:
      //   return MaterialPageRoute(builder: (_) => HomeScreen());
      case signin:
        return MaterialPageRoute(builder: (_) => const SigninPage());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
