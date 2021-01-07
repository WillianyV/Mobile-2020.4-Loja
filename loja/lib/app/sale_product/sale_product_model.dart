import 'package:flutter/material.dart';
import 'package:loja/app/product/product_model.dart';
import 'package:loja/app/sale/sale_model.dart';

class SaleProduct {
  final String id;
  final Product product;
  final Sale sale;

  const SaleProduct({
    this.id,
    this.product,
    this.sale,
  });
}
