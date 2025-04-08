// ignore: unused_import
// ignore_for_file: file_names

// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
// ignore: unused_import
import 'package:my_apptransaction/components/custom_button.dart';
// ignore: unused_import
import 'package:my_apptransaction/components/custom_input_field.dart';
import 'package:my_apptransaction/home/home_page.dart';
// ignore: unused_import
import 'package:my_apptransaction/theme/text_styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: CircleAvatar(
            radius: 60,
            backgroundColor: const Color(0xFF10172F),
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
            child: Text('Sign Up', style: AppTextStyles.bodyBold(context)),
          ),
          SizedBox(height: 20),
          CustomInputField(
            horizontalPadding: 15,
            labelStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoMono',
            ),
            label: 'Full Name',
            icon: Icons.email_outlined,
            border: const UnderlineInputBorder(),
          ),
          SizedBox(height: 20),
          CustomInputField(
            horizontalPadding: 15,
            labelStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoMono',
            ),
            label: 'Email Address',
            icon: Icons.email_outlined,
            border: const UnderlineInputBorder(),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          CustomButton(
            text: 'Sign Up',
            onPressed: () {
              Get.to(() => const HomePage());
            },
          ),
        ],
      ),
    );
  }
}
