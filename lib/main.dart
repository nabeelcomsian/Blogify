import 'package:blogify/Core/Theme/app_theme.dart';
import 'package:blogify/Features/Auth/presentation/pages/Signin_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkMode,
      home: const SigninPage(),
    );
  }
}
