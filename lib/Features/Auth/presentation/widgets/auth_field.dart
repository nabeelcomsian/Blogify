import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isObsure = false});
  final String hintText;
  final bool isObsure;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObsure,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$hintText is missing';
        }
        return null;
      },
    );
  }
}
