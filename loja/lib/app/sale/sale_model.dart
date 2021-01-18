import 'package:flutter/material.dart';
import 'package:loja/app/ecommerce/ecommerce_model.dart';
import 'package:loja/app/product/product_model.dart';
import 'package:loja/app/user/user_model.dart';

class Sale {
  final String id;
  final double totalPrice;
  final String payment;
  final String installment;
  final User user;
  final ECommerce eCommerce;
  final List<Product> products;

  const Sale({
    this.id,
    @required this.totalPrice,
    @required this.payment,
    @required this.installment,
    @required this.user,
    @required this.eCommerce,
    @required this.products,
  });
}
