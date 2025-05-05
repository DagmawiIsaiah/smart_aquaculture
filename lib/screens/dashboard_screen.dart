import 'package:flutter/material.dart';

import '../view/view.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavBar(),
          NotificationView(),
        ],
      ),
    );
  }
}
