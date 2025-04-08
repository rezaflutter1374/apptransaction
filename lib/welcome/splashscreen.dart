import 'package:flutter/material.dart';
import 'package:my_apptransaction/welcome/onboarding.dart';
import 'package:my_apptransaction/theme/text_styles.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (_, __, ___) => const Onboarding(),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(color: Theme.of(context).colorScheme.primary),
          Image.asset('assets/images/Group.png'),
          Text('BankPick', style: AppTextStyles.bodyBold(context)),
        ],
      ),
      // ignore: avoid_unnecessary_containers
    );
  }
}
