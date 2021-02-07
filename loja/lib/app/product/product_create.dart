import 'package:flutter/material.dart';
import 'package:loja/components/drawer_loja.dart';

class ProductCreate extends StatefulWidget {
  @override
  _ProductCreateState createState() => _ProductCreateState();
}

class _ProductCreateState extends State<ProductCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produtos"),
      ),
      drawer: DrawerLoja(),
    );
  }

  Widget _body() {}
}
