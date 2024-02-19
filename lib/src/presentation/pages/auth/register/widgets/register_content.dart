import 'package:clean_code/src/presentation/utils/base_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.22,
            color: BASE_COLOR,
            child: Row(
              children: [
                Image.asset(
                  'assets/img/gamepad.png',
                  height: 100,
                  width: 100,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
