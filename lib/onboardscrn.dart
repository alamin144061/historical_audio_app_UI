import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design_bitm/home_page.dart';

class OnBoardScrn extends StatelessWidget {
  const OnBoardScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
        },
        child: Container(
          height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('pic/trinitycollege.jpg'),fit: BoxFit.fill)
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(25),
                    height: 400,
                    width: 450,
                    decoration: BoxDecoration(
                     // color: Color(0xff0b131c).withOpacity(.5),
                      image: DecorationImage(image: AssetImage('pic/blackbox.png'),
                          colorFilter: ColorFilter.mode(Color(0xff0b131c).withOpacity(.9),BlendMode.dstATop)
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text('Your History\nKnowledge',
                          style: GoogleFonts.kanit(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Container(
                              color: Colors.deepOrange,
                              height: 6,
                              width: 40,
                            ),
                            SizedBox(width: 12,),
                            Container(
                              color: Colors.white30,
                              height: 6,
                              width: 15,
                            ),
                            SizedBox(width: 12,),
                            Container(
                              color: Colors.white30,
                              height: 6,
                              width: 15,
                            )
                          ],
                        )
                      ],
                    ),
      
                  ),
                ],
              ),
              Positioned(
                bottom: 290,
                left: 40,
      
                child: Image.asset('pic/heritagelogo.png',
                  height: 100,
                  width: 100,
                ),
              ),
      
            ],
          ),
        ),
      ),
    );
  }
}
