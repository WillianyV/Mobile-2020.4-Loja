import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loja/constants.dart';
import 'package:loja/routes/AppRoutes.dart';

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
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          'assets/images/1.png',
          height: 200,
        ),
      ),
    );
  }
}
