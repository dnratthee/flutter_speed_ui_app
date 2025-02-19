import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/widgets/my_button.dart';

class B01PageUI extends StatefulWidget {
  const B01PageUI({super.key});

  @override
  createState() => _B01PageUIState();
}

class _B01PageUIState extends State<B01PageUI> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                top: -142,
                left: 57,
                child: Container(
                  width: 496,
                  height: 496,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFFF8F9FF),
                      width: 3,
                    ),
                  ),
                )),
            Positioned(
                top: -327,
                left: 148,
                child: Container(
                  width: 635,
                  height: 635,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F9FF),
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: 625,
                left: -264.7,
                child: Container(
                  width: 372,
                  height: 372,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Color(0xFFF8F9FF),
                      width: 3,
                    ),
                  ),
                )),
            Positioned(
              top: 625,
              left: -264.7,
              child: Transform.rotate(
                  angle: 27.09,
                  child: Container(
                    width: 372,
                    height: 372,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color(0xFFF8F9FF),
                        width: 3,
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/b/imgb1.png'),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Discover Your\nDream Job here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xFF1F41BB),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Explore all the existing job roles based on your interest and study major',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFCBD6FF),
                                spreadRadius: 0,
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: MyButton(
                            text: 'Login',
                            color: Color(0xFF1F41BB),
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            width: 160,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/b02');
                            },
                          ),
                        ),
                        MyButton(
                          text: 'Register',
                          color: Colors.white,
                          fontColor: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          width: 160,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
