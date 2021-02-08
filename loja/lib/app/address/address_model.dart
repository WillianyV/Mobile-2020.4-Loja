import 'package:flutter/material.dart';

class Address {
  final String id;
  final String postcode;
  final String state;
  final String city;
  final String neighborhood;
  final String street;
  final String number;
  final String complement;

  const Address({
    this.id,
    @required this.postcode,
    @required this.state,
    @required this.city,
    @required this.neighborhood,
    @required this.street,
    @required this.number,
    this.complement,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
      postcode: json["cep"],
      state: json["estado"],
      city: json["cidade"],
      neighborhood: json["bairro"],
      street: json["rua"],
      number: json["numero"]);
}
