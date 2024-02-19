import 'package:clean_code/src/presentation/widgets/defauly_textfield.dart';
import 'package:flutter/material.dart';

import 'package:clean_code/src/presentation/utils/base_color.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.27,
            color: BASE_COLOR,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/img/gamepad.png',
                  height: 100,
                  width: 100,
                ),
                const Text(
                  'Game Store',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Continue with',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Log up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.people_outline,
            label: 'User name',
            onChange: (value) {},
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.email_outlined,
            label: 'Email',
            onChange: (value) {},
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.lock_outline,
            label: 'Password',
            onChange: (value) {},
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.lock_outline,
            label: 'Confirm Password',
            onChange: (value) {},
          ),
        ),
      ],
    );
  }
}
