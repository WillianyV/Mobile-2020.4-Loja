import 'package:dio/dio.dart';
import 'package:loja/app/ecommerce/ecommerce_model.dart';
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
}
