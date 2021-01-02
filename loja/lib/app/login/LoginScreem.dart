import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja/Constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: primaryGradientColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/1.png',
                      height: 90,
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Text('Login',
                            style: TextStyle(
                                color: secondaryTextColor, fontSize: 20)),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
