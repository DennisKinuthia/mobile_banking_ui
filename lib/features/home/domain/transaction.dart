import 'package:flutter/animation.dart';

class Transaction {
  const Transaction({
    required this.name,
    required this.image,
    required this.color,
    required this.transactionNature,
    required this.value,
  });
  final String name;
  final String image;
  final Color color;
  final String transactionNature;
  final double value;
}
