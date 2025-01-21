import 'package:blogify/Core/Theme/app_pallete';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key, required this.buttonText});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ElevatedButton(
          style: const ButtonStyle(
            shadowColor: WidgetStatePropertyAll(AppPallete.transparentColor),
            fixedSize: WidgetStatePropertyAll(Size(370, 55)),
            backgroundColor:
                WidgetStatePropertyAll(AppPallete.transparentColor),
          ),
          onPressed: () {},
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppPallete.whiteColor),
          )),
    );
  }
}
