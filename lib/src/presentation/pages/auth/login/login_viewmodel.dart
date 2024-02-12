// ignore_for_file: avoid_print 
//-TODO: provider is other name
import 'package:flutter/material.dart';
import 'package:clean_code/src/presentation/utils/validation_item.dart';
import 'package:clean_code/src/presentation/pages/auth/login/login_state.dart';

class LoginViewModel extends ChangeNotifier {
  LoginState _state = LoginState();

  //GETTERS
  LoginState get state => _state;

  //SETTERS
  void changeEmail(String value) {
    _state = _state.copyWith(email: ValidationItem(value: value));
    notifyListeners();
  }

  void changePassword(String value) {
    _state = _state.copyWith(password: ValidationItem(value: value));
    notifyListeners();
  }

  void login(){
    print('Email: ${_state.email}');
    print('Password: ${_state.password}');
  }
}
