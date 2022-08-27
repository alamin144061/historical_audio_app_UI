import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlaceTwo extends StatefulWidget {
  const PlaceTwo({Key? key}) : super(key: key);

  @override
  State<PlaceTwo> createState() => _PlaceTwoState();
}

class _PlaceTwoState extends State<PlaceTwo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: Container(
                      //  height: double.infinity,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:  Colors.orange,
                        ),
                        child: const Center(
                            child: Text(
                          "People\n135",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        )),
                      ),
                    ),
                     Positioned(
                      top: 5,
                      left: 35,
                      child: Container(
                        height: 60,
                        width: 60,

                        decoration: BoxDecoration(
                         // border: Border.all(color: Colors.green, width: 2, style: BorderStyle.solid),
                          
                          color: Colors.white.withOpacity(.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CircleAvatar( 
                          backgroundImage:AssetImage('pic/heritage1.jfif'
                          ), 
                        
                        ),
                      ),
                    ),
                    
                    Positioned(
                       bottom: 25,
                      right: 55,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.play_arrow,size: 15,),
                      ),
                    ),
                  ],
                );
  }
}