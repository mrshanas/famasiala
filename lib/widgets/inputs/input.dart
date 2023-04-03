import 'package:flutter/material.dart';

import 'package:famasiala/utils/constants.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.placeholder,
    this.password = false,
    this.suffixIcon,
    this.keyboard,
  });

  final String placeholder;
  final bool password;
  final Widget? suffixIcon;
  final TextInputType? keyboard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: keyboard,
        obscureText: password,
        obscuringCharacter:  '●',
        decoration: InputDecoration(
          hintText: placeholder,
          suffixIcon: suffixIcon,
          fillColor: Colors.grey[200],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[200]!,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
