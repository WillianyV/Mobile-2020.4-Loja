import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:loja/app/user/user_model.dart';
import 'package:loja/data/dummy_users.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  //salva ou altera
  void put(User user) {
    if (user == null) {
      return;
    }
    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      //alterar
      _items.update(user.id, (_) => user);
    } else {
      //Adicionar
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
          () => User(
              id: id,
              name: user.name,
              nick: user.nick,
              email: user.email,
              password: user.password,
              cpf: user.cpf,
              phone: user.phone,
              //endereco
              avatarUrl: user.avatarUrl));
    }
    notifyListeners();
  }

  void remove(User user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}
