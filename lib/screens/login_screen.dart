import 'package:famasiala/screens/otp_screen.dart';
import 'package:famasiala/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


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
          Lottie.asset('assets/gifs/authgif.json',
              height: 280, width: double.infinity),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Let\'s Get Started',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25.0,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'login to your account',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const InputLabel(text: 'Email or Mobile'),
          const Input(
            placeholder: 'example@domain.com',
            keyboard: TextInputType.emailAddress,
          ),
          const InputLabel(
            text: 'Password',
          ),
          Input(
            keyboard: TextInputType.text,
            placeholder: '●●●●●●●●●●',
            password: _passwordVisible,
            suffixIcon: GestureDetector(
              onTap: _togglePasswordIcon,
              child: _passwordVisible
                  ?  Icon(
                      Icons.remove_red_eye,
                      color: kPrimaryColor,
                    )
                  : Icon(
                      Icons.remove_red_eye_outlined,
                      color: kPrimaryColor,
                    ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17.0,
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
                  builder: (context) => const OTPScreen(),
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
                  fontWeight: FontWeight.w700,
                  fontSize: 17.0,
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
                child: TextButton(
                  child: (Text(
                    'Register',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0,
                    ),
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const RegisterScreen()),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
