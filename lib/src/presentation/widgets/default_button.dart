import 'package:flutter/material.dart';
import '../utils/base_color.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  String text;
  Function() onPressed;

  DefaultButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: BASE_COLOR,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 55,
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: 55,
            alignment: Alignment.centerRight,
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
