import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class AddExpenses extends StatefulWidget {
  const AddExpenses({super.key});

  @override
  State<AddExpenses> createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {
  TextEditingController expenscontroller = TextEditingController();
  TextEditingController categorycontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  DateTime selectDate = DateTime.now();
  List<String> myCategoriesicons = [
    'entertainment',
    'food',
    'home',
    'pet',
    'shopping',
    'tech',
    'travel'
  ];



  @override
  void initState() {
    // TODO: implement initState
    datecontroller.text = DateFormat('dd/MM/yyyy').format(DateTime.now());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.brown.shade800),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Expenses',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  controller: expenscontroller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        FontAwesomeIcons.dollarSign,
                        size: 16,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                onTap: () {},
                controller: categorycontroller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      FontAwesomeIcons.list,
                      size: 16,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (ctx) {
                              bool isExpanded = false;
                              String iconSelected = '';
                              late Color categoryColor=Colors.white;
                              return StatefulBuilder(
                                  builder: (context, setState) {
                                return AlertDialog(
                                  title: Text('Create a Category'),
                                  content: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          // readOnly: true,
                                          decoration: InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide.none),
                                              hintText: 'Name'),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          // readOnly: true,
                                          onTap: () {
                                            setState(() {
                                              isExpanded = !isExpanded;
                                            });
                                          },
                                          decoration: InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              fillColor: Colors.white,
                                              suffixIcon: Icon(
                                                CupertinoIcons.chevron_down,
                                                size: 12,
                                              ),
                                              border: OutlineInputBorder(
                                                  borderRadius: isExpanded
                                                      ? BorderRadius.vertical(
                                                          top: Radius.circular(
                                                              12))
                                                      : BorderRadius.circular(
                                                          12),
                                                  borderSide: BorderSide.none),
                                              hintText: 'Icon'),
                                        ),
                                        isExpanded
                                            ? Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          bottom:
                                                              Radius.circular(
                                                                  12)),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: GridView.builder(
                                                      gridDelegate:
                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 3,
                                                              mainAxisSpacing:
                                                                  5,
                                                              crossAxisSpacing:
                                                                  5),
                                                      itemCount:
                                                          myCategoriesicons
                                                              .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              iconSelected =
                                                                  myCategoriesicons[
                                                                      index];
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 50,
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: AssetImage(
                                                                        'images/${myCategoriesicons[index]}.png')),
                                                                border: Border.all(
                                                                    width: 3,
                                                                    color: iconSelected ==
                                                                            myCategoriesicons[
                                                                                index]
                                                                        ? Colors
                                                                            .green
                                                                        : Colors
                                                                            .grey),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                          ),
                                                        );
                                                      }),
                                                ),
                                              )
                                            : Container(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          readOnly: true,
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (ctx) {

                                                  return AlertDialog(
                                                    content: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        ColorPicker(
                                                          pickerColor: categoryColor,
                                                          onColorChanged:
                                                              (value) {
                                                            setState((){
                                                              categoryColor=value;

                                                            });


                                                              },
                                                        ),
                                                        SizedBox(
                                                          height: 45,
                                                          width: double.infinity,
                                                          child: TextButton(
                                                              onPressed: () {
                                                                Navigator.pop(context);
                                                              },
                                                              style: TextButton.styleFrom(
                                                                  backgroundColor: Colors.black,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(10))),
                                                              child: Text(
                                                                'Save',
                                                                style: TextStyle(fontSize: 22, color: Colors.white),
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          decoration: InputDecoration(
                                              filled: true,
                                              fillColor:categoryColor,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide.none),
                                              hintText: 'Color'),
                                        ),
                                        SizedBox(height: 15,),
                                        SizedBox(
                                          height: 45,
                                          width: double.infinity,
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              style: TextButton.styleFrom(
                                                  backgroundColor: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10))),
                                              child: Text(
                                                'Save',
                                                style: TextStyle(fontSize: 22, color: Colors.white),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                            });
                      },
                      icon: Icon(
                        FontAwesomeIcons.plus,
                        size: 16,
                      ),
                    ),
                    hintText: 'Category'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: datecontroller,
                readOnly: true,
                textAlign: TextAlign.center,
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: selectDate,
                      firstDate: selectDate,
                      lastDate: DateTime.now().add(Duration(days: 365)));
                  if (newDate != null) {
                    setState(() {
                      datecontroller.text =
                          DateFormat('dd/MM/yyyy').format(newDate);
                      selectDate = newDate;
                    });
                  }
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      FontAwesomeIcons.clock,
                      size: 16,
                    ),
                    hintText: 'Date'),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
