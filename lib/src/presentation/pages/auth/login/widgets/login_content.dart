import 'package:clean_code/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../../utils/base_color.dart';
import '../../../../widgets/default_button.dart';
import '../../../../widgets/defauly_textfield.dart';

// ignore: must_be_immutable
class LoginContent extends StatelessWidget {
  LoginViewModel vm;
  LoginContent(this.vm, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            color: BASE_COLOR,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            'Continue with',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            'Log in',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: DefaultTextField(
            onChange: (value) {
              vm.changeEmail(value);
            },
            error: vm.state.email.error,
            icon: Icons.email_outlined,
            label: 'Email',
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: DefaultTextField(
            onChange: (value) {
              vm.changePassword(value);
            },
            error: vm.state.password.error,
            icon: Icons.lock_outline,
            label: 'Password',
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 30,
          ),
          width: double.infinity,
          child: DefaultButton(
            onPressed: () {
              vm.login();
            },
            text: 'Log In',
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 95),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'register');
            },
            child: const Text(
              'Create an account',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
        )
      ],
    );
  }
}
