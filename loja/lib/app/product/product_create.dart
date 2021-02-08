import 'package:flutter/material.dart';
import 'package:loja/components/drawer_loja.dart';

class ProductCreate extends StatefulWidget {
  @override
  _ProductCreateState createState() => _ProductCreateState();
}

class _ProductCreateState extends State<ProductCreate> {
  String sizeValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produtos"),
      ),
      drawer: DrawerLoja(),
      body: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Container(height: 40),
          textFieldNome(),
          Container(height: 20),
          textAreaDescription(),
          Container(height: 20),
          dropDownSize(),
        ],
      ),
    );
  }

  Widget textFieldNome() {
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

  Widget textAreaDescription() {
    return TextFormField(
      maxLines: 8,
      decoration: InputDecoration(
        labelText: "Descrição",
        hintText: "Digite aqui descrição do produto",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.description),
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

  Widget dropDownSize() {
    return DropdownButton<String>(
      value: sizeValue,
      icon: Icon(Icons.arrow_drop_down_circle),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          sizeValue = newValue;
        });
      },
      items: <String>['PP', 'P', 'M', 'GG', 'XG']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
