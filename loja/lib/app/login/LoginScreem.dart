import 'package:flutter/material.dart';
import 'package:loja/components/default_button.dart';
import 'package:loja/shared/Constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;
  Widget _body() {
    return Container(
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
                        padding: const EdgeInsets.only(bottom: 32, right: 32.0),
                        child: Text('Login',
                            style: TextStyle(color: whiteColor, fontSize: 20)),
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
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(Icons.mail_outline),
                          )),
                    ),
                    Container(height: 20),
                    TextFormField(
                      obscureText: _showPassword == false ? true : false,
                      decoration: InputDecoration(
                          labelText: "Senha",
                          hintText: "Digite a senha",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          //suffixIcon: SvgPicture.asset('assets/icons/Mail.svg'),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(Icons.vpn_key_outlined),
                          ),
                          suffixIcon: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                _showPassword == false
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                          )),
                    ),
                    Container(height: 30),
                    DefaultButton(
                      text: 'Entrar',
                      press: () {},
                    ),
                    Container(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    Container(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Registre-se',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }
}
