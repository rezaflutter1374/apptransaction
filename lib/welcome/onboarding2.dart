import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:my_apptransaction/components/custom_button.dart';
import 'package:my_apptransaction/welcome/%20onboarding3.dart';
import 'package:my_apptransaction/theme/text_styles.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 0),
            child: Image.asset('assets/images/Group 3.png'),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              ' The most Secoure\n Platfrom for Customer',
              style: AppTextStyles.bodyBold(context),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Built-in Fingerprint, face\n recognition and more, \nkeeping you completely safe',
              style: TextStyles.bodyBoldWhite(context),
              textAlign: TextAlign.left,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
              text: 'Next',

              onPressed: () => Get.offAll(() => Onboarding3()),
            ),
          ),
        ],
      ),
    );
  }
}
