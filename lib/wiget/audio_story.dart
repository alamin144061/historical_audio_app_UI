import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design_bitm/home_page.dart';
import 'package:ui_design_bitm/last_page.dart';
import 'package:ui_design_bitm/onboardscrn.dart';

class AudioStory extends StatefulWidget {
  const AudioStory({Key? key}) : super(key: key);

  @override
  State<AudioStory> createState() => _AudioStoryState();
}

class _AudioStoryState extends State<AudioStory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'AUDIOSTORIES',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    height: 85,
                    width: 60,
                    fit: BoxFit.cover,
                    image: AssetImage('pic/heritage3.jfif')),
              ),
            ),
            Container(
              height: 80,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'The Founding \nFamilies',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LastPage()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    height: 85,
                    width: 60,
                    fit: BoxFit.cover,
                    image: AssetImage('pic/heritage4.jfif')),
              ),
            ),
            Container(
              height: 80,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Art Colleges \nSocities',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LastPage()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
