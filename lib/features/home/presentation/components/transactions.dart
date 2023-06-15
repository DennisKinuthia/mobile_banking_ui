import 'package:first_app/features/home/data/sample_data.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 18.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: transactions[index].color,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        transactions[index].image,
                      ),
                      height: 25.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      transactions[index].transactionNature,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              transactions[index].transactionNature == 'payment'
                  ? '-\$${transactions[index].value}'
                  : '+\$${transactions[index].value}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            )
          ],
        );
      },
    );
  }
}
