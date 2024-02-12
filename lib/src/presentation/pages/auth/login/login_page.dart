import 'package:flutter/material.dart';
import 'package:clean_code/src/presentation/utils/base_color.dart';
import 'package:clean_code/src/presentation/pages/auth/login/widgets/login_content.dart';
import 'package:clean_code/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginViewModel vm = Provider.of<LoginViewModel>(context);

    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: LoginContent(vm),
    );
  }
}
