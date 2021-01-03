import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:loja/shared/Constants.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // teste
  // fazer por API
  void startTime() {
    new Timer(Duration(seconds: 3), navigate);
  }

  void navigate() {
    print('navigate');
    bool flag = false;
    if (flag) {
      print('TELA HOME');
      return;
    } else {
      Navigator.of(context).pushNamed(AppRoutes.LOGIN);
    }
  }

  @override
  void initState() {
    super.initState();
    this.startTime();
  }
  // fim teste

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Image.asset(
          'assets/images/2.png',
        ),
      ),
    );
  }
}
