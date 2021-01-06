import 'package:flutter/material.dart';

class Address {
  final String id;
  final String postcode;
  final String state;
  final String city;
  final String neighborhood;
  final String number;
  final String complement;

  const Address({
    this.id,
    @required this.postcode,
    @required this.state,
    @required this.city,
    @required this.neighborhood,
    @required this.number,
    @required this.complement,
  });
}
