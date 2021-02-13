import 'package:flutter/material.dart';
import 'package:loja/app/product/product_model.dart';

class ProductTitle extends StatelessWidget {
  final Product product;

  const ProductTitle(this.product);

  Product get newMethod => product;

  @override
  Widget build(BuildContext context) {
    final image_Product =
        CircleAvatar(backgroundImage: NetworkImage(product.imagem_url));

    return ListTile(
      leading: image_Product,
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
                  // Navigator.of(context).pushNamed();
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
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                        FlatButton(
                          child: Text('Sim'),
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ],
                    ),
                  ).then((confimed) {
                    if (confimed) {
                      //remover
                    }
                  });
                },
              ),
            ],
          )),
    );
  }
}
