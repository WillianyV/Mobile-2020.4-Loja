import 'package:flutter/material.dart';
import 'package:loja/app/address/address_model.dart';

class User {
  final String id;
  final String name;
  final String nick;
  final String email;
  final String password;
  final String cpf;
  final String phone;
  // final Address address;
  final String avatarUrl;

  const User({
    this.id,
    @required this.name,
    @required this.nick,
    @required this.email,
    @required this.password,
    @required this.cpf,
    @required this.phone,
    //  @required this.address,
    @required this.avatarUrl,
  });
}
