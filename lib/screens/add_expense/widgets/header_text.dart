import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Add Expenses',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    );
  }
}
