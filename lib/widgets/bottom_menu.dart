import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color.fromARGB(255, 26, 26, 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                context.go("/home");
              },
              icon: const Icon(
                CupertinoIcons.cloud,
                color: Color.fromARGB(255, 233, 86, 32),
              )),
          IconButton(
              onPressed: () {
                context.go("/search");
              },
              icon: const Icon(
                CupertinoIcons.search,
                color: Color.fromARGB(255, 233, 86, 32),
              )),
          IconButton(
              onPressed: () {
                context.go("/library");
              },
              icon: const Icon(
                CupertinoIcons.music_albums,
                color: Color.fromARGB(255, 233, 86, 32),
              )),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              color: Color.fromARGB(255, 233, 86, 32),
            ),
            onPressed: () {
              context.go("/notification");
            },
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.person,
              color: Color.fromARGB(255, 233, 86, 32),
            ),
            onPressed: () {
              context.go("/profile");
            },
          ),
        ],
      ),
    );
  }
}
