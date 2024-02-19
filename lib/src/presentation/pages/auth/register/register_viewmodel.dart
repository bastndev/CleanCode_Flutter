// ignore_for_file: avoid_print

import 'package:clean_code/src/presentation/utils/validation_item.dart';
import 'package:flutter/material.dart';

import 'package:clean_code/src/presentation/pages/auth/register/register_state.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterState _state = RegisterState();

  RegisterState get state => _state;

  register() {
    if (_state.isValid()) {
      print('Email: ${_state.email.value}');
      print('UserName: ${_state.userName.value}');
      print('Password: ${_state.password.value}');
      print('ConfirmPassword: ${_state.confirmPassword.value}');
    } else {
      print('The form is not valid');
    }
  }

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
    notifyListeners();
  }

  changeUserName(String value) {
    if (value.length >= 3) {
      _state =
          _state.copyWith(userName: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          userName: const ValidationItem(error: 'Puts 3 characters'));
    }
    notifyListeners();
  }

  changePassword(String value) {
    if (value.length >= 6) {
      _state =
          _state.copyWith(password: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          password: const ValidationItem(error: 'Puts 6 characters'));
    }
    notifyListeners();
  }

  changeConfirmPassword(String value) {
    if (value.length >= 6) {
      _state = _state.copyWith(
          confirmPassword: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          confirmPassword: const ValidationItem(error: 'Puts 6 characters'));
    }
    notifyListeners();
  }
}
