import 'dart:math';

import 'package:expensestackingappfirebase/screens/add_expenses/views/add_expeses.dart';
import 'package:expensestackingappfirebase/screens/home/views/main_screen.dart';
import 'package:expensestackingappfirebase/screens/stats/stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          onTap: (value){
            setState(() {
              index=value;
            });

          },

          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.graph_square_fill), label: 'States'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>AddExpenses()));
        },
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ], transform: GradientRotation(pi / 4))),
            child: Icon(CupertinoIcons.add)),
        shape: CircleBorder(),
      ),
      body: index ==0 ? MainScreen() : StatsScreen(),
    );
  }
}
