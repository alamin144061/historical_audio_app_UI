import 'package:flutter/material.dart';
import 'package:ui_design_bitm/home_page.dart';
import 'package:ui_design_bitm/onboardscrn.dart';
import 'package:ui_design_bitm/wiget/stack_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardScrn(),
    );
  }
}
