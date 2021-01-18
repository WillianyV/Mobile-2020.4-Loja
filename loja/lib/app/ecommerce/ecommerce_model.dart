import 'package:flutter/material.dart';
import 'package:loja/app/address/address_model.dart';
import 'package:loja/app/sale/sale_model.dart';

class ECommerce {
  final String id;
  final String name;
  final String cnpj;
  final String phone;
  final String email;
  final String password;
  final Address address;
  final List<Sale> sales;

  const ECommerce({
    this.id,
    @required this.name,
    @required this.cnpj,
    @required this.phone,
    @required this.email,
    @required this.password,
    this.address,
    this.sales,
  });
}
