import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


List<Map<String,dynamic>> transactionData=[

  {
    'icon':FaIcon(FontAwesomeIcons.gamepad,color: Colors.white,),
    'color':Colors.yellow[700],
    'name':'Food',
    'totalAmount':'\$45.00',
    'date':'Today'
  },
  {
    'icon':FaIcon(FontAwesomeIcons.bagShopping,color: Colors.white),
    'color':Colors.purple,
    'name':'Shopping',
    'totalAmount':'\$48.00',
    'date':'Today'
  },{
    'icon':FaIcon(FontAwesomeIcons.heartCircleCheck,color: Colors.white),
    'color':Colors.green,
    'name':'Health',
    'totalAmount':'\$434.00',
    'date':'Today'
  },
  {
    'icon':FaIcon(FontAwesomeIcons.plane,color: Colors.white),
    'color':Colors.blue,
    'name':'Travel',
    'totalAmount':'\$45.00',
    'date':'Today'
  },



];