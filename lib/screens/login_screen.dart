import 'package:famasiala/screens/register_screen.dart';
import 'package:flutter/material.dart';

import 'package:famasiala/screens/home_screen.dart';
import 'package:famasiala/widgets/buttons/button.dart';
import 'package:famasiala/widgets/inputs/input.dart';
import 'package:famasiala/widgets/inputs/input_label.dart';
import 'package:famasiala/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _togglePasswordIcon() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset(
            'assets/images/login_illustration.jpg',
            height: 280,
            width: double.infinity,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Let\'s Get Started',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'login to your account',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const InputLabel(text: 'Email or Mobile'),
          const Input(placeholder: 'daydreamer@mrshanas.dev'),
          const InputLabel(text: 'Password'),
          Input(
            placeholder: '********',
            password: _passwordVisible,
            suffixIcon: GestureDetector(
              onTap: _togglePasswordIcon,
              child: _passwordVisible
                  ? const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    )
                  : const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'Login',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account? ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
