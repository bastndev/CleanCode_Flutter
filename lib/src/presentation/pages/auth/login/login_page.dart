import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              color: Colors.blue,
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/gamepad.png',
                    height: 100,
                    width: 150,
                  ),
                  const Text(
                    'Game Store',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      // color: Colors.,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
