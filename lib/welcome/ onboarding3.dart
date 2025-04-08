// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_apptransaction/components/custom_button.dart';
import 'package:my_apptransaction/sing/sign-In.dart';
import 'package:my_apptransaction/theme/text_styles.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 33, left: 19),
            child: Image.asset('assets/images/Group 4.png'),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Paying for Everything\n is Easy and Convenient',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyBold(context),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Built-in Fingerprint, face recognition\n and more, keeping you completely safe',
              textAlign: TextAlign.center,
              style: TextStyles.bodyBoldWhite(context),
              maxLines: 2,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
              text: 'Next',

              onPressed: () => Get.offAll(() => SignIn()),
            ),
          ),
        ],
      ),
    );
  }
}
