import 'package:flutter/material.dart';
import 'package:loja/components/default_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esqueceu a senha?"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(height: 20),
                Text(
                    'Não tem problema! Só precisamos do e-mail que você usou ao criar seu cadastro. E uma nova senha será enviada para este endereço.'),
                Container(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      hintText: "Digite o seu e-mail",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      //suffixIcon: SvgPicture.asset('assets/icons/Mail.svg'),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(Icons.mail_outline),
                      )),
                ),
                Container(height: 30),
                DefaultButton(
                  text: 'Redefinir senha',
                  press: () {
                    // enviar msg para email
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
