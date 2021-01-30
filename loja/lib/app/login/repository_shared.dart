import 'package:dio/dio.dart';
import 'package:loja/shared/urls.dart';

class RepositoryShared {
  Dio dio;

  RepositoryShared() {
    this.dio = Dio();
  }

  Future<bool> logar(String login, String senha) async {
    print("Logar");
    print("${url_login}${login}/${senha}");
    Response response = await this.dio.get("${url_login}${login}/${senha}");

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
