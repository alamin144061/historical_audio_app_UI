import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    height: 150.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('pic/old.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const Positioned(
                      top: 180,
                      left: 180,
                      child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The Founding \n Family",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, height: 1.0),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "pic/profess.jpg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text("Karina sarrow"),
                      Text("Professor of history")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 120,
                width: double.infinity,
                //  color: Colors.green,
                child: Text(
                  'Historima Richard 8, Mortis in 1973 identified the following seven figures as key Fonding Fathers John adams, Benjamin Frakin. Alexander Hamilton john jay,Thmas jefferson James Madison and Gearge',
                  style: TextStyle(fontSize: 10),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.share),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.heart_broken)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
