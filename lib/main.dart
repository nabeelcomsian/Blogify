import 'package:blogify/Core/App_Routes.dart';
import 'package:blogify/Core/Secrets/app_secrets.dart';
import 'package:blogify/Core/Theme/app_theme.dart';
import 'package:blogify/Features/Auth/presentation/pages/Signup_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supaBase = await Supabase.initialize(
      url: AppSecrets.supaBaseAppUrl, anonKey: AppSecrets.supaBaseAnonkey);
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
      onGenerateRoute: AppRoutes.generateRoute,
      home: const SignupPage(),
    );
  }
}
