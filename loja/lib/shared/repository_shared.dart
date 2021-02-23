import 'package:dio/dio.dart';
import 'package:loja/app/ecommerce/ecommerce_model.dart';
import 'package:loja/app/product/product_model.dart';
import 'package:loja/shared/urls.dart';
import 'package:loja/shared/Constants.dart';
import 'dart:convert' as convert;
import 'dart:io' as Io;

class RepositoryShared {
  Dio dio;

  RepositoryShared() {
    this.dio = Dio();
  }

  Future<List<Product>> findAllProducts() async {
    Response response = await this.dio.get(url_findAllProducts);
    List<Product> products = new List();
    //print(response.data['produto']);
    try {
      return (response.data as List)
          .map((item) => Product.fromJson(item))
          .toList();
    } catch (e) {
      return null;
    }
  }

  Future<Product> createProduct(Product product) async {
    Map<String, dynamic> map = {
      "categoria": product.category,
      "desconto": product.discount,
      "descricao": product.description,
      "imagem_url": product.imagem_url,
      "nome": product.name,
      "tamanho": product.size,
      "valor": product.price
    };
    FormData formData = FormData.fromMap(map);
    Response response = await this.dio.post(url_createProduct, data: {
      "categoria": product.category,
      "desconto": product.discount,
      "descricao": product.description,
      "imagem_url": product.imagem_url,
      "nome": product.name,
      "tamanho": product.size,
      "valor": product.price
    });
    if (response.statusCode == 200) {
      return Product.fromJson(response.data);
    }
    return null;
  }

  Future<Product> UpdateProduct(Product product) async {
    Map<String, dynamic> map = {
      "id": product.id,
      "categoria": product.category,
      "desconto": product.discount,
      "descricao": product.description,
      "imagem_url": product.imagem_url,
      "nome": product.name,
      "tamanho": product.size,
      "valor": product.price
    };
    FormData formData = FormData.fromMap(map);
    print("Editar");
    Response response = await this.dio.put(url_updateProducts, data: {
      "id": product.id,
      "categoria": product.category,
      "desconto": product.discount,
      "descricao": product.description,
      "imagem_url": product.imagem_url,
      "nome": product.name,
      "tamanho": product.size,
      "valor": product.price
    });
    if (response.statusCode == 200) {
      return Product.fromJson(response.data);
    }
    return null;
  }

  Future<void> deleteProduct(int id) async {
    Response response = await this.dio.delete(url_deleteProducts + "${id}");
  }

  Future<bool> logarLoja(String login, String senha) async {
    Response response = await this.dio.get("${url_login}${login}/${senha}");
    if (response.statusCode == 200) {
      loja = ECommerce.fromJson(response.data);
      return true;
    } else {
      return false;
    }
  }

  Future<String> uploadImg(var file) async {
    List<int> bytes = file.readAsBytesSync();
    String base64 = convert.base64Encode(bytes);

    //print(base64);

    Map<String, dynamic> params = {'image': base64};
    FormData formData = FormData.fromMap(params);

    Response response = await this.dio.post(url_uploadImg, data: formData);

    if (response.statusCode == 200) {
      var dados = response.data['data'];
      return dados['url'];
    } else {
      return null;
    }
  }
}
