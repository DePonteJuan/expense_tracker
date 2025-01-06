import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow[700],
                          ),
                          child: Icon(CupertinoIcons.person_fill,
                          color: Colors.yellow[800],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Welcome back!!',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.outline
                      ),
                        ),
                        Text('Juan De Ponte',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurface
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
            Icon(CupertinoIcons.settings,
            color: Theme.of(context).colorScheme.outline,
            ),
              ],
            ),
            SizedBox(height: 20),

            Container(
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    theme.colorScheme.tertiary,
                    theme.colorScheme.secondary,
                    theme.colorScheme.primary
                  ],
                  transform: GradientRotation(pi/4),
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total Balance', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                  SizedBox(height: 12),
                  Text('\$1000.00', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: Center(child: Icon(CupertinoIcons.arrow_up, color: Colors.lightGreen, size:12),),
                            ),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Income', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                                Text('\$1000', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                              ],
                            )
                          ],
                        ),
                                     Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: Center(child: Icon(CupertinoIcons.arrow_down, color: Colors.red, size:12),),
                            ),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Expense', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                                Text('\$1000', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}