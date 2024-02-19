import 'package:clean_code/src/presentation/pages/auth/login/login_page.dart';
import 'package:clean_code/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:clean_code/src/presentation/pages/auth/register/register_page.dart';
import 'package:clean_code/src/presentation/pages/auth/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginViewModel(),),
        ChangeNotifierProvider(create: (context) => RegisterViewModel(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'register': (BuildContext context) => const RegisterPage(),
        },
      ),
    );
  }
}
