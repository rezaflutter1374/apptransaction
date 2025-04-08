import 'package:flutter/material.dart';
import 'package:my_apptransaction/components/custom_button.dart';

import 'package:my_apptransaction/theme/text_styles.dart';
import 'package:get/get.dart';
import 'package:my_apptransaction/welcome/onboarding2.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentStep = 0;

  bool get _isButtonEnabled => _currentStep < 3;

  void _updateProgress() {
    setState(() {
      if (_currentStep < 3) {
        _currentStep++;
      }

      if (_currentStep == 3) {
        Future.delayed(Duration.zero, () {
          Get.offAll(() => Onboarding2());
        });
      }
    });
  }

  // تابع برای ساخت هر دایره
  Widget _buildDot(int index) {
    final isActive = index <= _currentStep;
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            isActive
                ? Theme.of(context).colorScheme.secondary
                // ignore: deprecated_member_use
                : const Color.fromARGB(255, 23, 28, 76).withOpacity(0.4),
        border:
            isActive
                ? null
                : Border.all(
                  color: const Color.fromARGB(255, 54, 67, 109),
                  width: 1.5,
                ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Image.asset('assets/images/analize.png'),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: _buildDot(index),
              ),
            ),
          ),
          SizedBox(height: 55),
          Text(
            'Fastest Payment\n in the world',
            style: AppTextStyles.bodyBold(context),
          ),
          SizedBox(height: 5),
          Text(
            'Integrate multiple payment methods\n to help you up the process quickly.',
            style: TextStyles.bodyBoldWhite(context),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
              text: _isButtonEnabled ? 'Next' : 'Get Started',
              onPressed:
                  _isButtonEnabled
                      ? _updateProgress
                      : () => Get.offAll(() => Onboarding2()),
            ),
          ),
        ],
      ),

      // ignore: avoid_unnecessary_containers
    );
  }
}
