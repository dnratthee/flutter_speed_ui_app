import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/widgets/my_button.dart';

class A01PageUI extends StatefulWidget {
  const A01PageUI({super.key});

  @override
  createState() => _A01PageUIState();
}

class _A01PageUIState extends State<A01PageUI> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 463,
              decoration: BoxDecoration(
                color: Color(0xFFF89AEE),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/a/imga1.png'),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Discover Your\nOwn Dream House',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xFF464444),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas. Sagittis nam velit volutpat eu nunc.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF464444),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    text: 'Sign in',
                    color: Color(0xFFF89AEE),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    width: 195,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/a02');
                    },
                  ),
                  MyButton(
                    text: 'Register',
                    color: Color(0xFFF3F3F3),
                    fontColor: Color(0xFF545151),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    width: 175,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
