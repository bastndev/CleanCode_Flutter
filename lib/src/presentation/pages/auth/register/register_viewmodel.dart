import 'package:clean_code/src/presentation/utils/validation_item.dart';
import 'package:flutter/material.dart';

import 'package:clean_code/src/presentation/pages/auth/register/register_state.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterState _state = RegisterState();

  RegisterState get state => RegisterState();

  changeEmail(String value) {
    final bool emailFormatValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    if (!emailFormatValid) {
      _state = _state.copyWith(email: const ValidationItem(error: 'No Email'));
    } else if (value.length >= 6) {
      _state = _state.copyWith(email: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          email: const ValidationItem(error: 'Puts 6 characters'));
    }
  }

  changeUserName(String value) {
    if (value.length >= 3) {
      _state =
          _state.copyWith(userName: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          userName: const ValidationItem(error: 'Puts 3 characters'));
    }
  }

  changePassword(String value) {
    if (value.length >= 6) {
      _state =
          _state.copyWith(password: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          password: const ValidationItem(error: 'Puts 6 characters'));
    }
  }

  changeConfirmPassword(String value) {
    if (value.length >= 6) {
      _state = _state.copyWith(
          confirmPassword: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          confirmPassword: const ValidationItem(error: 'Puts 6 characters'));
    }
  }
}
