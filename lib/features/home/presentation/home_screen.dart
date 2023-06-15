import 'package:first_app/features/home/presentation/components/bank_cards.dart';
import 'package:first_app/features/home/presentation/components/home_appbar.dart';
import 'package:first_app/features/home/presentation/components/recepients.dart';
import 'package:first_app/features/home/presentation/components/total_balance.dart';
import 'package:first_app/features/home/presentation/components/transaction_history.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 48.0,
        ),
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),
            BankCards(),
            TotalBalance(),
            Recepients(),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
