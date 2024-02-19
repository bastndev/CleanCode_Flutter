import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultTextField extends StatelessWidget {
  String label;
  String error;
  IconData icon;
  bool obscureText;
  Function(String text) onChange;

  DefaultTextField({
    super.key,
    required this.icon,
    required this.label,
    required this.onChange,
    this.error = '',
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        onChange(value);
      },
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        errorText: error,
        suffixIcon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
    );
  }
}
