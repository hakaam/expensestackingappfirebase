import 'dart:math';

import 'package:expensestackingappfirebase/Data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow[700]),
                        ),
                        Icon(
                          CupertinoIcons.person_fill,
                          color: Colors.yellow[800],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                        Text(
                          'Hakim Ali',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.settings)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Card start
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.tertiary,
                ], transform: GradientRotation(pi / 4)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey.shade300,
                    offset: Offset(5, 5),
                    



                  )


                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ 4000.00',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white30, shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.arrow_down,
                                  size: 12,
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Income',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '\$250.00',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white30, shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.arrow_down,
                                  size: 12,
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expneses',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '\$4450.00',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(

              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text('Transactions',
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: (){


                  },
                  child: Text('View All',
                    style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.outline,
                        fontWeight: FontWeight.w400),
                  ),
                )
                
                
              ],
              
              
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: transactionData.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: transactionData[index]['color'],
                                       shape:BoxShape.circle,

                                      ),
                                    ),
                                    transactionData[index]['icon']
                                  ],
                                ),
                                SizedBox(width:12),
                                Text(
                                  transactionData[index]['name'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.onBackground,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],

                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  transactionData[index]['totalAmount'],
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).colorScheme.onBackground,
                                      fontWeight: FontWeight.w400
                                  ),

                                ),
                                Text(
                                  transactionData[index]['date'],
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).colorScheme.outline,
                                      fontWeight: FontWeight.w400
                                  ),

                                )





                              ],


                            )
                          ],
                        ),
                      ),


                    ),
                  );
              
                },
              
              
              
              ),
            )

            
            
            
          ],
        ),
      ),
    );
  }
}
