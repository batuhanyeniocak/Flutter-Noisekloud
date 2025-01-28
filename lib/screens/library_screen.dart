import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: arkaPlanRenk,
      body: Center(
        child: Text("kutuphane"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
