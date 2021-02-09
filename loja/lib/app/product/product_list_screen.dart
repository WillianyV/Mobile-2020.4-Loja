import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja/app/product/product_model.dart';
import 'package:loja/components/drawer_loja.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:loja/shared/Constants.dart';
import 'package:loja/shared/repository_shared.dart';

class Product_List extends StatefulWidget {
  @override
  _Product_ListState createState() => _Product_ListState();
}

class _Product_ListState extends State<Product_List> {
  //ArrayList de produtos
  List<Product> products;

  RepositoryShared repositoryShared = new RepositoryShared();

  Future<void> initState() async {
    super.initState();
    this.products = await repositoryShared.findAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerLoja(),
      appBar: AppBar(
        title: Text('Lista de Produtos'),
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.PRODUCT_CREATE);
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SingleChildScrollView(
        child: ListView.builder(
          itemCount: products.length,
          //  itemBuilder: (ctx, i) => ProductTitle(products.byIndex(i)),
        ),
      ),
    );
  }
}
