import 'package:first_app/features/home/domain/bank_card.dart';
import 'package:first_app/features/home/domain/transaction.dart';
import 'package:flutter/material.dart';

final List<BankCard> bankCards = [
  const BankCard('Claire Wangari', '435 678 098 378 321', '327'),
  const BankCard('Eric Genius', '567 342 890 254 612', '258'),
  const BankCard('Dennis Mwaura', '876 098 356 445 698', '973'),
  const BankCard('Elizabeth Wambui', '234 543 987 267 852', '836'),
];

final List<Transaction> transactions = [
  Transaction(
    name: 'Gym',
    image: 'assets/images/gym.png',
    color: Colors.yellow.withOpacity(.15),
    transactionNature: 'payment',
    value: 40.50,
  ),
  Transaction(
    name: 'Savings',
    image: 'assets/images/bank.png',
    color: Colors.green.withOpacity(.15),
    transactionNature: 'deposit',
    value: 3440.50,
  ),
  Transaction(
    name: 'Carre four',
    image: 'assets/images/cart.png',
    color: Colors.orange.withOpacity(.15),
    transactionNature: 'payment',
    value: 240.75,
  ),
  Transaction(
    name: 'McDonalds',
    image: 'assets/images/food.png',
    color: Colors.pinkAccent.withOpacity(.15),
    transactionNature: 'payment',
    value: 25.34,
  ),
  Transaction(
    name: 'Uber',
    image: 'assets/images/car.png',
    color: Colors.yellow.withOpacity(.15),
    transactionNature: 'payment',
    value: 60.45,
  ),
  Transaction(
    name: 'Flight',
    image: 'assets/images/plane.png',
    color: Colors.blueAccent.withOpacity(.15),
    transactionNature: 'payment',
    value: 1040.00,
  ),
  Transaction(
    name: 'Online Banking',
    image: 'assets/images/thunderbolt.png',
    color: Colors.yellow.withOpacity(.15),
    transactionNature: 'deposit',
    value: 7500.00,
  ),
];
