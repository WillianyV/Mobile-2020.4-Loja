import 'package:dio/dio.dart';
import 'package:loja/app/ecommerce/ecommerce_model.dart';
import 'package:loja/app/product/product_model.dart';
import 'package:loja/shared/urls.dart';
import 'package:loja/shared/Constants.dart';

class RepositoryShared {
  Dio dio;

  RepositoryShared() {
    this.dio = Dio();
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
    var params = {"image": file};
    Response response = await this.dio.post(url_uploadImg, data: params);

    if (response.statusCode == 200) {
      print("object");
      return response.data['url'];
    } else {
      return null;
    }
  }
}
