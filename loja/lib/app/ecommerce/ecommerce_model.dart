import 'package:flutter/material.dart';
import 'package:loja/app/address/address_model.dart';
import 'package:loja/app/sale/sale_model.dart';

class ECommerce {
  final int id;
  final String name;
  final String cnpj;
  final String phone;
  final String email;
  final String password;
  final Address address;
  final List<Sale> sales;

  const ECommerce({
    @required this.id,
    @required this.name,
    @required this.cnpj,
    @required this.phone,
    @required this.email,
    @required this.password,
    @required this.address,
    this.sales,
  });

  factory ECommerce.fromJson(Map<String, dynamic> json) => ECommerce(
        id: json["id"],
        name: json["nome"],
        cnpj: json["cnpj"],
        phone: json["telefone"],
        email: json["email"],
        password: json["senha"],
        address: Address.fromJson(json["endereco"]),
      );
}
