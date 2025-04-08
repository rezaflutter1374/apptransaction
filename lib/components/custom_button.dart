import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final double? width;
  final bool isPrimary;
  final double horizontalMargin;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.width,
    this.isPrimary = true,
    this.horizontalMargin = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
      child: SizedBox(
        width: width ?? double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isPrimary
                    ? const Color.fromARGB(255, 27, 81, 244)
                    : const Color(0xFFF5F5F5),
            foregroundColor:
                isPrimary
                    ? Colors.white
                    : const Color.fromARGB(255, 69, 111, 237),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'RobotoMono',
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side:
                  isPrimary
                      ? BorderSide.none
                      : const BorderSide(color: Color(0xFF2E3B62), width: 1.5),
            ),
            elevation: 0,
            // ignore: deprecated_member_use
            shadowColor: Colors.black.withOpacity(0.2),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  size: 20,
                  color: isPrimary ? Colors.white : const Color(0xFF2E3B62),
                ),
              if (icon != null) const SizedBox(width: 12),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
