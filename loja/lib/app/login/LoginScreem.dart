import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja/components/default_button.dart';
import 'package:loja/shared/Constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    gradient: secondaryGradientColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(90))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/3.png',
                          height: 50,
                        ),
                      ),
                    ),
                    Spacer(),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 32, right: 32.0),
                          child: Text('Login',
                              style:
                                  TextStyle(color: whiteColor, fontSize: 20)),
                        )),
                  ],
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "E-mail",
                            hintText: "Entre com o seu e-mail",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            //suffixIcon: SvgPicture.asset('assets/icons/Mail.svg'),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.mail_outline),
                            )),
                      ),
                      Container(height: 20),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Senha",
                            hintText: "Digite a senha",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            //suffixIcon: SvgPicture.asset('assets/icons/Mail.svg'),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.vpn_key_outlined),
                            )),
                      ),
                      Container(height: 20),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Esqueceu a senha?',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                      Container(height: 30),
                      DefaultButton(
                        text: 'Entrar',
                        press: () {},
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
