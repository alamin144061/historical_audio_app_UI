import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design_bitm/wiget/place_1.dart';
import 'package:ui_design_bitm/wiget/place_2.dart';
import 'package:ui_design_bitm/wiget/place_3.dart';
import 'package:ui_design_bitm/wiget/stack_class.dart';

class Heritage extends StatefulWidget {
  const Heritage({Key? key}) : super(key: key);

  @override
  State<Heritage> createState() => _HeritageState();
}

class _HeritageState extends State<Heritage> {
  final _tagList = [PlaceOne(), PlaceTwo(), PlaceThree()];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 200,
          //color: Colors.green,
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "Know Your\n Heritage",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontSize: 25,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
         margin: EdgeInsets.symmetric(horizontal: 20),
          height: 250,
          width: double.infinity,
          decoration: const BoxDecoration(
           // color: Colors.red,
          ),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _tagList[index];
              },
              separatorBuilder: (_, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: _tagList.length),
        ),
      ],
    );
  }
}
