import 'package:clean_code/src/presentation/pages/auth/login/widgets/login_content.dart';
import 'package:clean_code/src/presentation/utils/base_color.dart';
// import 'package:clean_code/src/presentation/widgets/default_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

// import '../../../widgets/defauly_textfield.dart';

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
