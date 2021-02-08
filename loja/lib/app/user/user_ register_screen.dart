import 'package:flutter/material.dart';
import 'package:loja/components/default_button.dart';
import 'package:loja/shared/Constants.dart';
import 'package:loja/shared/repository_shared.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class UserRegister extends StatefulWidget {
  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  bool _showPassword = false;
  final _formUser = GlobalKey<FormState>();
  var maskDataFormatter = new MaskTextInputFormatter(mask: "##/##/####");
  var maskCpfFormatter = new MaskTextInputFormatter(mask: "###.###.###-##");
  var maskPhoneFormatter = new MaskTextInputFormatter(mask: "(##) # ####-####");
  RepositoryShared repositoryShared;

  void init() {
    super.initState();
    repositoryShared = RepositoryShared();
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Form(
          key: _formUser,
          child: Column(
            children: [
              Container(height: 40),
              nameTextFormField(),
              Container(height: 20),
              dateBirthTextFormField(),
              Container(height: 20),
              cpfTextFormField(),
              Container(height: 20),
              phoneTextFormField(),
              Container(height: 20),
              emailTextFormField(),
              Container(height: 20),
              passwordTextFormField(),
              Container(height: 30),
              DefaultButton(
                text: 'Cadastrar',
                press: () {
                  if (_formUser.currentState.validate()) {
                    //Cadastrar usuario

                  }
                },
              ),
              Container(height: 40),
            ],
          ),
        ),
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
          return 'Senha inválido.';
        }
        if (value.trim().length < 6) {
          return 'Senha pequena. No mínimo 6 caracteres.';
        }
        return null;
      },
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "E-mail",
        hintText: "Digite o e-mail",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: SvgPicture.asset('assets/icons/Mail.svg'),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.mail_outline),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'E-mail inválido.';
        }
        return null;
      },
    );
  }

  TextFormField phoneTextFormField() {
    return TextFormField(
      inputFormatters: [maskPhoneFormatter],
      decoration: InputDecoration(
        labelText: "Telefone",
        hintText: "Digite o número do telefone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.phone_outlined),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Número do telefone inválido.';
        }
        if (value.trim().length < 16) {
          return 'Número do telefone pequeno.';
        }
        return null;
      },
    );
  }

  TextFormField cpfTextFormField() {
    return TextFormField(
      inputFormatters: [maskCpfFormatter],
      decoration: InputDecoration(
        labelText: "CPF",
        hintText: "Digite o CPF",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.account_box_outlined),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'CPF inválido.';
        }
        if (value.trim().length < 14) {
          return 'CPF pequeno.';
        }
        return null;
      },
    );
  }

  TextFormField dateBirthTextFormField() {
    return TextFormField(
      inputFormatters: [maskDataFormatter],
      decoration: InputDecoration(
        labelText: "Data de nascimento",
        hintText: "Digite a data",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.calendar_today_outlined),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Data de nascimento inválida.';
        }
        if (value.trim().length < 10) {
          return 'Data pequena.';
        }
        return null;
      },
    );
  }

  TextFormField nameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Nome",
        hintText: "Digite o seu nome",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.person_outlined),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Nome inválido.';
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastre-se'),
      ),
      body: _body(),
    );
  }
}
