import 'package:flutter/material.dart';

import 'package:famasiala/screens/home_screen.dart';
import 'package:famasiala/screens/login_screen.dart';
import 'package:famasiala/utils/constants.dart';
import 'package:famasiala/widgets/buttons/button.dart';
import 'package:famasiala/widgets/inputs/input.dart';
import 'package:famasiala/widgets/inputs/input_label.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: ListView(
        padding: const EdgeInsets.only(top: 150.0),
        children: [
          const Center(
            child: Text(
              'Register',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, left: 8.0),
            child: Text(
              'Let\'s get started',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              'create an account',
              style: TextStyle(color: Colors.grey, fontSize: 17.5),
            ),
          ),
          const InputLabel(
            text: 'Fullname',
          ),
          const Input(
            placeholder: 'Ex. Day Dreamer',
          ),
          const InputLabel(
            text: 'Email',
          ),
          const Input(
            placeholder: 'daydreamer@mrshanas.dev',
          ),

          // A customer divider widget
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    endIndent: 10.0,
                    height: 20.0,
                    indent: 10.0,
                    thickness: 1.3,
                  ),
                ),
                const Text(
                  'or',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22.0,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    endIndent: 10.0,
                    height: 20.0,
                    indent: 10.0,
                    thickness: 1.3,
                  ),
                ),
              ],
            ),
          ),
          const InputLabel(
            text: 'Phone number',
          ),
          const Input(
            placeholder: '+255 Phone number',
          ),

          const SizedBox(
            height: 10.0,
          ),

          CustomButton(
            text: 'Register',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),

          const SizedBox(
            height: 10.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account? ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  'Login',
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
