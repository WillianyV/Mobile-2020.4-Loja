import 'package:flutter/material.dart';
import 'package:loja/app/address/address_model.dart';
import 'package:loja/app/sale/sale_model.dart';

class User {
  final String id;
  final String name;
  final String cpf;
  final String phone;
  final String email;
  final String password;
  final String date_of_birth;
  final Address address;
  final List<Sale> sales;

  const User({
    this.id,
    @required this.name,
    @required this.cpf,
    @required this.phone,
    @required this.email,
    @required this.password,
    @required this.date_of_birth,
    this.sales,
    this.address,
  });
}
