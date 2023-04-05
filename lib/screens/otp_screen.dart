import 'package:famasiala/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import 'package:famasiala/widgets/buttons/button.dart';
import 'package:famasiala/utils/constants.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  void _onOTPComplete(String pin) {
    print("Completed: " + pin);
  }

  void _onOTPChanged(String pin) {
    print("Changed: " + pin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Verification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Enter your',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Verification Code',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  OTPTextField(
                    contentPadding: const EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 80,
                    style: TextStyle(
                      fontSize: 25,
                      color: kPrimaryColor,
                    ),
                    otpFieldStyle: OtpFieldStyle(
                      borderColor: kPrimaryColor,
                      enabledBorderColor: kPrimaryColor,
                      focusBorderColor: kPrimaryColor,
                    ),
                    fieldStyle: FieldStyle.box,
                    onCompleted: _onOTPComplete,
                    onChanged: _onOTPChanged,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    '04:59',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'We have sent a verification code to your email ',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                      children: [
                        TextSpan(
                          text: 'day*****@gmail.com. ',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        const TextSpan(
                          text: 'You can check your inbox ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'I didn\'t receive the code? Send again',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomButton(
                text: 'Verify',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
