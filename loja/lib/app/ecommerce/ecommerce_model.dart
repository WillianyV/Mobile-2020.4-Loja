import 'package:flutter/material.dart';
import 'package:loja/app/address/address_model.dart';

class ECommerce {
  final String id;
  final String name;
  final String cnpj;
  final String phone;
  final Address address;

  const ECommerce({
    this.id,
    @required this.name,
    @required this.cnpj,
    @required this.phone,
    this.address,
  });
}
