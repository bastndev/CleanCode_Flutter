import 'package:clean_code/src/presentation/pages/auth/register/register_viewmodel.dart';
import 'package:clean_code/src/presentation/widgets/default_button.dart';
import 'package:clean_code/src/presentation/widgets/defauly_textfield.dart';
import 'package:flutter/material.dart';

import 'package:clean_code/src/presentation/utils/base_color.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterViewModel vm = Provider.of<RegisterViewModel>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.27,
            color: BASE_COLOR,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 50, left: 15),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                ),
                Row(
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
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, top: 15),
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
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.people_outline,
            label: 'User name',
            onChange: (value) {
              vm.changeUserName(value);
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.email_outlined,
            label: 'Email',
            onChange: (value) {
              vm.changeEmail(value);
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.lock_outline,
            label: 'Password',
            onChange: (value) {
              vm.changePassword(value);
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            icon: Icons.lock_outline,
            label: 'Confirm Password',
            onChange: (value) {
              vm.changeConfirmPassword(value);
            },
          ),
        ),
        Container(
          width: double.infinity,
          margin:
              const EdgeInsets.only(right: 15, left: 15, bottom: 40, top: 15),
          child: DefaultButton(
            text: 'Save',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
