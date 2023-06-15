import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.white,
                size: 26.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 26.0,
                  ),
                ),
                const NotificationIconButton(),
                const SizedBox(
                  width: 15.0,
                ),
                const UserIcon(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NotificationIconButton extends StatelessWidget {
  const NotificationIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Icon(
          Icons.notifications_outlined,
          color: Colors.white,
          size: 26.0,
        ),
        Positioned(
          top: 0,
          right: 3.0,
          child: Container(
            width: 10.0,
            height: 10.0,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

class UserIcon extends StatelessWidget {
  const UserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage('assets/images/vicky.jpeg'),
      radius: 15.0,
    );
  }
}
