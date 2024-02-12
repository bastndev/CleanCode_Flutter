import 'package:flutter/material.dart';
import 'package:clean_code/src/presentation/utils/base_color.dart';
import 'package:clean_code/src/presentation/pages/auth/login/widgets/login_content.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: LoginContent(),
    );
  }
}
