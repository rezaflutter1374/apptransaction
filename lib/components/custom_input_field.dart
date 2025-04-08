import 'dart:math';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextStyle? labelStyle;
  final double horizontalPadding;

  const CustomInputField({
    super.key,
    required this.label,
    required this.icon,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.labelStyle,
    required UnderlineInputBorder border,
    this.horizontalPadding = 20,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: max(20.0, screenWidth * 0.05),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = screenWidth < 600 ? screenWidth * 0.9 : 500.0;
          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: TextFormField(
              obscureText: obscureText,
              keyboardType: keyboardType,
              validator: validator,
              decoration: InputDecoration(
                labelText: label,
                labelStyle:
                    labelStyle ??
                    Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: const Color.from(
                        alpha: 1,
                        red: 1,
                        green: 1,
                        blue: 1,
                      ),
                      fontWeight: FontWeight.w600,
                    ),
                prefixIcon: Icon(icon, color: const Color(0xFFFFFFFF)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFFFFFFFF),
                    width: 2,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
