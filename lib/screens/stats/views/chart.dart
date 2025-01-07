import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyChart extends StatefulWidget {
  const MyChart({super.key});

  @override
  State<MyChart> createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  @override
  Widget build(BuildContext context) {
    return BarChart(

      mainBartChart(),
    );
  }
  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(toY: y,  gradient: LinearGradient(transform: const GradientRotation(pi /40),colors: [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.secondary, Theme.of(context).colorScheme.tertiary]), width: 10, 
      backDrawRodData: BackgroundBarChartRodData(show: true, color: Colors.grey.shade300, toY: 5))
      ,

    ]);
  }


  List<BarChartGroupData> showingGroups() => List.generate(8, (i){
    switch(i) {
      case 0:
      return makeGroupData(0, 1);
      case 1:
      return makeGroupData(1, 2);
      case 2:
      return makeGroupData(2, 3);
      case 3:
      return makeGroupData(3, 4);
      case 4:
      return makeGroupData(4, 3);
      case 5:
      return makeGroupData(5, 3);
      case 6:
      return makeGroupData(6, 4);
      case 7:
      return makeGroupData(7, 3.8);
      default:
      return throw Exception('Invalid index');
    }
  });

  BarChartData mainBartChart() {
    return BarChartData(
      titlesData: FlTitlesData(show: true,
      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
      getTitlesWidget: leftTitles
      )),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
    reservedSize: 38,
    getTitlesWidget: getTiles,
      )),
      

      ),
      borderData: FlBorderData(show: false),
      gridData: FlGridData(show: false),
      barGroups: showingGroups(),
      
    );
  }
  Widget getTiles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold);
    Widget text;

    switch(value.toInt()) {
    
      case 0:
      text = Text('01', style: style,);
      break;
      case 1:
      text = Text('02', style: style,);
      break;
      case 2:
      text = Text('03', style: style,);
      break;
      case 3:
      text = Text('04', style: style,);
      break;
      case 4:
      text = Text('05', style: style,);
      break;
      case 5:
      text = Text('06', style: style,);
      break;
      case 6:
      text = Text('07', style: style,);
      break;
      case 7:
      text = Text('08', style: style,);
      break;
      default:
      text = Text('', style: style,);
      break;
    }
    return text;
  }
}
 Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold);
    Widget text;

    switch(value.toInt()) {
    
      case 0:
      text = Text('1k', style: style,);
      break;
      case 1:
      text = Text('2k', style: style,);
      break;
      case 2:
      text = Text('3k', style: style,);
      break;
      case 3:
      text = Text('4k', style: style,);
      break;
      case 4:
      text = Text('5k', style: style,);
      break;
      case 5:
      text = Text('6k', style: style,);
      break;
      case 6:
      text = Text('7k', style: style,);
      break;
      case 7:
      text = Text('8k', style: style,);
      break;
      default:
      text = Text('', style: style,);
      break;
    }
    return text;
  }