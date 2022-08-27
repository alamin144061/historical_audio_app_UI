import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design_bitm/wiget/app_bar.dart';
import 'package:ui_design_bitm/wiget/audio_story.dart';
import 'package:ui_design_bitm/wiget/heritage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              App_Bar(),
              Heritage(),
              AudioStory(),
            ],
          ),
        ),
      ),
    );
  }
}
