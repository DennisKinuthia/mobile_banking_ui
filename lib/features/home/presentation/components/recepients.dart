import 'package:flutter/material.dart';

class Recepients extends StatelessWidget {
  const Recepients({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Recepeints',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            SingleChildScrollView(
              child: Row(
                children: <Widget>[
                  ...List<Widget>.generate(
                    5,
                    (index) => Container(
                      width: 50.0,
                      height: 50.0,
                      margin: const EdgeInsets.only(right: 14.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/${index + 1}.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.grey[500],
                          size: 5.0,
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.grey[500],
                          size: 5.0,
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.grey[500],
                          size: 5.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
