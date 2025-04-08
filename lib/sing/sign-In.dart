// ignore_for_file: file_names, unnecessary_import

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_apptransaction/components/custom_button.dart';
import 'package:my_apptransaction/components/custom_input_field.dart';
import 'package:my_apptransaction/home/home_page.dart';
import 'package:my_apptransaction/sing/sign-up.dart';
import 'package:my_apptransaction/theme/text_styles.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: CircleAvatar(
            radius: 60,
            backgroundColor: const Color.fromARGB(255, 11, 18, 41),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 14),
            child: Text('SignIn', style: AppTextStyles.bodyBold(context)),
          ),
          SizedBox(height: 30),
          CustomInputField(
            horizontalPadding: 15,
            labelStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoMono',
            ),
            label: 'Email',
            icon: Icons.email_outlined,
            border: const UnderlineInputBorder(),
          ),
          SizedBox(height: 40),
          CustomInputField(
            horizontalPadding: 15,
            label: 'Password',
            labelStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.bold,

              fontFamily: 'RobotoMono',
            ),
            icon: Icons.password_outlined,
            border: const UnderlineInputBorder(),
          ),
          SizedBox(height: 50),
          CustomButton(
            text: 'SignIn',
            onPressed: () {
              Get.to(() => const HomePage());
            },
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 20),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFF868585),
                  fontFamily: 'RobotoMono',
                ),
                children: [
                  const TextSpan(text: "Im a new user."),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => const SignUp());
                          },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}
