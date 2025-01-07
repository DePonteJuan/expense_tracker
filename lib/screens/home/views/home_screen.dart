import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../add_expense/views/add_expense_screen.dart';
import '../../stats/views/stats_screen.dart';
import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var widgetList = [
    const MainScreen(),
    const StatScreen(),
  ];
  int currentIndex = 0;
  late Color selectedColor = Theme.of(context).colorScheme.primary;
  Color unselectedColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    
    return Scaffold(
      //appBar: AppBar(),
      body: widgetList[currentIndex],

      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            
            setState(() {
              currentIndex = index;
            });
          },
          fixedColor: currentIndex == 0 ? theme.colorScheme.primary : theme.colorScheme.secondary,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home, color: currentIndex == 0 ? selectedColor : unselectedColor,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.graph_square_fill, color: currentIndex == 1 ? selectedColor : unselectedColor,), label: 'Graph'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddExpenseScreen()));
        },
        shape: const CircleBorder(),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [theme.colorScheme.tertiary,
               theme.colorScheme.secondary,
                theme.colorScheme.primary],
              transform: const GradientRotation(pi/4),
            ),
          ),
          constraints: BoxConstraints.tightFor(width: 60, height: 60),
          child: Icon(CupertinoIcons.add, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
