import 'package:first_app/features/home/presentation/components/transactions.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 24.0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions History',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.white54,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: size.width,
              height: size.height * .3,
              child: const Transactions(),
            )
          ],
        ),
      ),
    );
  }
}
