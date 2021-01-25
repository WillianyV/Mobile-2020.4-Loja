import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loja/app/login/repository_shared.dart';
import 'package:loja/components/default_button.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:loja/shared/Constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;
  final _formLogin = GlobalKey<FormState>();
  var login, senha;

  RepositoryShared repositoryShared;

  void initState() {
    super.initState();
    repositoryShared = RepositoryShared();
  }

  Widget _body() {
    return Container(
      child: SingleChildScrollView(
        child: Form(
          key: _formLogin,
          child: Column(
            children: [
              headLoginContainer(),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(height: 20),
                      emailTextFormField(),
                      Container(height: 20),
                      passwordTextFormField(),
                      Container(height: 30),
                      DefaultButton(
                        text: 'Entrar',
                        press: () {
                          if (_formLogin.currentState.validate()) {
                            //ir para o menu do cliente ou adm

                            Navigator.pushNamed(
                                context, AppRoutes.ECOMMECER_HOME);
                          }
                        },
                      ),
                      Container(height: 20),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, AppRoutes.FORGOT_PASSWORD),
                        child: Text(
                          'Esqueceu a senha?',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                      Container(height: 20),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, AppRoutes.USER_REGISTER),
                        child: Text(
                          'Cadastre-se',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
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

  Container headLoginContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
          gradient: secondaryGradientColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 90,
                color: whiteColor,
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
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
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
              _showPassword == false ? Icons.visibility_off : Icons.visibility,
              color: greyColor,
            ),
          ),
          onTap: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Senha vazia.';
        }
        if (value.trim().length < 6) {
          return 'Senha pequena. No mínimo 6 caracteres.';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          senha = value;
        });
      },
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "E-mail",
        hintText: "Entre com o seu e-mail",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: SvgPicture.asset('assets/icons/Mail.svg'),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.mail_outline),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'E-mail vazio.';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          login = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Future<void> logar() async {}
}
