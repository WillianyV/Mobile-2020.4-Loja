import 'package:flutter/material.dart';
import 'package:loja/components/default_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formForgotPass = GlobalKey<FormState>();

  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Form(
          key: _formForgotPass,
          child: Column(
            children: [
              Container(height: 40),
              Text(
                  'Não tem problema! Só precisamos do e-mail que você usou ao criar seu cadastro e uma nova senha será enviada para este endereço.'),
              Container(height: 20),
              emailTextFormField(),
              Container(height: 30),
              DefaultButton(
                text: 'Redefinir senha',
                press: () {
                  if (_formForgotPass.currentState.validate()) {
                    //salvar
                    //msg
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "E-mail",
        hintText: "Digite o seu e-mail",
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esqueceu a senha?"),
      ),
      body: _body(),
    );
  }
}
