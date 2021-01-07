import 'package:flutter/material.dart';
import 'package:loja/app/address/address_model.dart';

class User {
  final String id;
  final String name;
  final String cpf;
  final String phone;
  final String email;
  final String password;
  final Address address;

  const User({
    this.id,
    @required this.name,
    @required this.cpf,
    @required this.phone,
    @required this.email,
    @required this.password,
    this.address,
  });
}
