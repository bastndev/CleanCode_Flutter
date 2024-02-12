import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultTextField extends StatelessWidget {
  String label;
  IconData icon;

  DefaultTextField({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        suffixIcon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
