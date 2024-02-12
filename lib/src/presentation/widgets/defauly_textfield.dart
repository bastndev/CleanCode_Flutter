import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultTextField extends StatelessWidget {
  String label;
  IconData icon;
  Function(String text) onChange;

  DefaultTextField({
    required this.icon,
    required this.label,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){
        onChange(value);
      },
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
