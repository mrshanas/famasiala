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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        title: const Text(
          'Verification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Enter your verification code',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: OTPTextField(
                contentPadding: const EdgeInsets.all(20),
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
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '04:59',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'We have sent a verification code to your email ',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                children: [
                  TextSpan(
                    text: 'day*****@gmail.com. ',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  const TextSpan(text: 'You can check your inbox '),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'I didn\'t receive the code? Send again',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(text: 'Verify', onTap: () {})
          ],
        ),
      ),
    );
  }
}
