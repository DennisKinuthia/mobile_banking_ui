import 'package:flutter/material.dart';

class TotalBalance extends StatelessWidget {
  const TotalBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Total balance',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: <Widget>[
                const Text(
                  '\$ 13,553.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(16.0),
                      right: Radius.circular(16.0),
                    ),
                  ),
                  child: const Text(
                    '+8.50%',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
