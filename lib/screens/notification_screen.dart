import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: arkaPlanRenk,
      body: Center(
        child: Text("bildirim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
