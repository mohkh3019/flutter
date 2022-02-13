import 'package:bmi_application/bmi_result_Screen.dart';
import 'package:bmi_application/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends  StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
      
      
    );
  }
}

