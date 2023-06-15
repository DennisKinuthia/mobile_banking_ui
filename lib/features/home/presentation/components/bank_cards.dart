import 'package:first_app/features/home/data/sample_data.dart';
import 'package:first_app/features/home/domain/bank_card.dart';
import 'package:flutter/material.dart';

class BankCards extends StatelessWidget {
  const BankCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: bankCards
                .map(
                  (card) => Card(card: card),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key, required this.card});

  final BankCard card;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .6,
      margin: const EdgeInsets.only(
        top: 18.0,
        right: 16.0,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 12.0,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFab6d3b),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Icon(
                  Icons.card_membership_rounded,
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.fiber_manual_record,
                      color: Colors.white,
                      size: 7.0,
                    ),
                    const Icon(
                      Icons.fiber_manual_record,
                      color: Colors.white,
                      size: 7.0,
                    ),
                    const Icon(
                      Icons.fiber_manual_record,
                      color: Colors.white,
                      size: 7.0,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      card.cvc,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: size.height * .165,
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 12.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF8c2734),
                  Color(0xFFab6d3b),
                ],
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    card.accountNumber,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        card.accountHolderName,
                        style: const TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Master Card',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Image.asset(
                            'assets/images/mastercard.png',
                            height: 18.0,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
