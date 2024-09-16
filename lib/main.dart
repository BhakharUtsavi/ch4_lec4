import 'package:ch4_p4/firsttask.dart';
import 'package:ch4_p4/homepage.dart';
import 'package:ch4_p4/secondtask.dart';
import 'package:ch4_p4/thirdtask.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context){
          return Homepage();
        },
        "firsttask":(context){
          return FirstTask();
        },
        "secondtask":(context){
          return SecondTask();
        },
        "thirdtask":(context){
          return Thirdtask();
        },
      },
    ),
  );
}