import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../screens/screens.dart';

void main() {
  runApp(const SmartAquaculture());
}

class SmartAquaculture extends StatelessWidget {
  const SmartAquaculture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartAquaculture - Realtime Aquatic Enviroment Monitoring',
      debugShowCheckedModeBanner: false,
      theme: WebTheme.theme,
      initialRoute: '/dashboard',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
