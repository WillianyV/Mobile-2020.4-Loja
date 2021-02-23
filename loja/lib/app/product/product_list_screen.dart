import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja/components/drawer_loja.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:loja/shared/Constants.dart';
import 'package:loja/app/product/product_model.dart';
import 'package:loja/shared/repository_shared.dart';
import 'package:provider/provider.dart';

class Product_List extends StatefulWidget {
  @override
  _Product_ListState createState() => _Product_ListState();
}

class _Product_ListState extends State<Product_List> {
  List<Product> products = List();

  RepositoryShared repositoryShared = new RepositoryShared();

  void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    //getProducts();
    //print(products.length);

    return Scaffold(
      drawer: DrawerLoja(),
      appBar: AppBar(
        title: Text('Lista de Produtos'),
      ),
      body: products != null ? _body() : Scaffold(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          editar = false;
          Navigator.pushNamed(context, AppRoutes.PRODUCT_CREATE);
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
    );
  }

  Widget _body() {
    //getProducts();
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, i) {
          Product product = products[i];
          return ListTile(
            leading: Image.network(product.imagem_url),
            title: Text(product.name),
            subtitle: Text(product.price.toStringAsFixed(2)),
            trailing: Container(
                width: 100,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.orange,
                      onPressed: () {
                        _editar(product);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Text('Excluir Produto'),
                            content: Text('Tem certeza?'),
                            actions: [
                              FlatButton(
                                child: Text('Não'),
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                              ),
                              FlatButton(
                                child: Text('Sim'),
                                onPressed: () =>
                                    Navigator.of(context).pop(true),
                              ),
                            ],
                          ),
                        ).then((confimed) {
                          if (confimed) {
                            deletar(product.id);
                            setState(() {
                              getProducts();
                            });
                          }
                        });
                      },
                    ),
                  ],
                )),
          );
        });
  }

  Future<void> getProducts() async {
    this.products = await repositoryShared.findAllProducts();
    setState(() {
      this.products;
      editar = false;
    });
  }

  void deletar(int id) {
    repositoryShared.deleteProduct(id);
  }

  void _editar(Product product) {
    productEdit = product;
    editar = true;
    Navigator.pushNamed(context, AppRoutes.PRODUCT_UPDATE);
  }
}
