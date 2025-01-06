import 'package:flutter/material.dart';

import 'screens/home/views/home_screen.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
          primary: const Color(0xFF00E2B7),
          secondary: const Color(0xFFE064F7),
          tertiary: const Color(0xFFFF8D6C),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}