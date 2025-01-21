import 'package:blogify/Core/App_Routes.dart';
import 'package:blogify/Core/Theme/app_pallete';
import 'package:blogify/Features/Auth/presentation/widgets/auth_field.dart';
import 'package:blogify/Features/Auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                AuthField(
                  hintText: 'Email',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthField(
                  hintText: 'Password',
                  controller: passwordController,
                  isObsure: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const AuthGradientButton(
                  buttonText: 'Sign In',
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.signup),
                  child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account ',
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: AppPallete.gradient2,
                                    fontWeight: FontWeight.bold),
                          )
                        ]),
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
