import 'package:clean_code/src/presentation/utils/validation_item.dart';

class LoginState {
  ValidationItem email;
  ValidationItem password;

  LoginState({
    this.email = const ValidationItem(),
    this.password = const ValidationItem(),
  });
}
