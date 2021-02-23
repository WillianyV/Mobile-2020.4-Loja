import 'package:flutter/material.dart';
import 'package:loja/app/ecommerce/ecommerce_home_Screem.dart';
import 'package:loja/app/forgot_password/forgot_password_screen.dart';
import 'package:loja/app/login/LoginScreem.dart';
import 'package:loja/app/product/product_create.dart';
import 'package:loja/app/product/product_list_screen.dart';
import 'package:loja/app/product/product_update.dart';
import 'package:loja/app/user/user_%20register_screen.dart';
import 'package:loja/shared/repository_shared.dart';
import 'package:loja/shared/theme.dart';

import 'app/splash/SplashScreem.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        inputDecorationTheme: inputDecorationTheme(),
      ),
      routes: {
        AppRoutes.SPLASH: (_) => Splash(),
        AppRoutes.LOGIN: (_) => Login(),
        AppRoutes.FORGOT_PASSWORD: (_) => ForgotPasswordScreen(),
        AppRoutes.USER_REGISTER: (_) => UserRegister(),
        AppRoutes.ECOMMECER_HOME: (_) => ECommecerHome(),
        AppRoutes.PRODUCT_LIST: (_) => Product_List(),
        AppRoutes.PRODUCT_CREATE: (_) => ProductCreate(),
        AppRoutes.PRODUCT_UPDATE: (_) => ProductUpdate()
      },
    );
  }
}
