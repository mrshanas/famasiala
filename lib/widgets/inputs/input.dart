import 'package:flutter/material.dart';

import 'package:famasiala/utils/constants.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.placeholder,
    this.password = false,
    this.suffixIcon,
  });

  final String placeholder;
  final bool password;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        obscureText: password,
        decoration: InputDecoration(
          hintText: placeholder,
          suffixIcon: suffixIcon,
          fillColor: Colors.grey[200],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[200]!,
            ),
          ),
        ),
      ),
    );
  }
}
