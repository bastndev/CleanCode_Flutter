import 'package:clean_code/src/presentation/pages/auth/register/register_state.dart';

class RegisterViewModel {
  final RegisterState _state = RegisterState();

  RegisterState get state => _state;
}
