import 'package:expensestackingappfirebase/screens/stats/chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Transaction',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,



            ),),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)


              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.4,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
                child: MyChart(


                ),
              ),



            )


          ],


        ),
      ),
    );
  }
}
