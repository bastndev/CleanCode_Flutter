import 'package:clean_code/src/presentation/pages/auth/login/login_state.dart';
import 'package:clean_code/src/presentation/utils/validation_item.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  LoginState _state = LoginState();

  //GETTERS
  LoginState get state => _state;

  //SETTERS
  void changeEmail(String value) {
    _state = _state.copyWith(email: ValidationItem(value: value));
  }
}
