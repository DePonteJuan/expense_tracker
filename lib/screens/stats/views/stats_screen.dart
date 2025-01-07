import 'package:expense_tracker/screens/stats/views/chart.dart';
import 'package:flutter/material.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Column(
        children: [
          Text('Transactions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 12.0),
              child: const MyChart(),
            ),
          ),
        ],
      ),
    )
    );
  }
}