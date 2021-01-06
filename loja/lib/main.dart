import 'package:flutter/material.dart';
import 'package:loja/app/login/LoginScreem.dart';
import 'package:loja/app/user/user_list.dart';
import 'package:loja/shared/theme.dart';

import 'app/splash/SplashScreem.dart';
import 'app/user/user_form.dart';
import 'routes/AppRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //melhorar as rotas
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        inputDecorationTheme: inputDecorationTheme(),
      ),
      routes: {
        AppRoutes.SPLASH: (_) => Splash(),
        AppRoutes.LOGIN: (_) => Login(),
        AppRoutes.USER_LIST: (_) => UserList(),
        AppRoutes.USER_FORM: (_) => UserForm(),
      },
    );
  }
}
