import 'package:expensestackingappfirebase/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses Tracker',
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.grey.shade100,
              onBackground: Colors.black,
              primary: Color(0xff00B2E7),
              secondary: Color(0xffE064F7),
              tertiary: Color(0xffff8D6C),
            outline: Colors.grey

          ),
        scaffoldBackgroundColor: Colors.brown.shade800

      ),
      home: HomeScreen(),
    );
  }
}
