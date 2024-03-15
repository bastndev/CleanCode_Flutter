// ignore_for_file: avoid_print
//-TODO: provider is other name
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:clean_code/src/presentation/utils/validation_item.dart';
import 'package:clean_code/src/presentation/pages/auth/login/login_state.dart';

class LoginViewModel extends ChangeNotifier {
  LoginState _state = LoginState();

  //GETTERS
  LoginState get state => _state;

  // Firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //SETTERS
  void changeEmail(String value) {
    final bool emailFormatValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    if (!emailFormatValid) {
      _state = _state.copyWith(email: const ValidationItem(error: 'No Email'));
    } else if (value.length >= 6) {
      _state = _state.copyWith(email: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          email: const ValidationItem(error: 'Min length is 6'));
    }
    notifyListeners();
  }

  void changePassword(String value) {
    if (value.length >= 6) {
      _state =
          _state.copyWith(password: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          password: const ValidationItem(error: 'Min length is 6'));
    }
    notifyListeners();
  }

  void login() async {
    if (state.isValid()) {
      print('Email: ${_state.email.value}');
      print('Password: ${_state.password.value}');
      final data = await _firebaseAuth.signInWithEmailAndPassword(
          email: _state.email.value, password: _state.password.value);
      print('Data: $data');
    } else {
      print('The form is not valid');
    }
  }
}
