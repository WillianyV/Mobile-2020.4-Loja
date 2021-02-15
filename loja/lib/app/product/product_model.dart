import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final String size;
  final double price, discount;
  final String category;
  final String imagem_url;

  const Product(
      {this.id,
      @required this.name,
      @required this.description,
      @required this.size,
      @required this.price,
      this.discount,
      @required this.category,
      @required this.imagem_url});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json["id"],
      name: json["nome"],
      description: json["descricao"],
      size: json["tamanho"],
      price: json["valor"],
      discount: json["desconto"],
      category: json["categoria"],
      imagem_url: json["imagem_url"]);
}
