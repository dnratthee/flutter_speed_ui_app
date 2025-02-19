import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/widgets/my_button.dart';
import 'package:flutter_speed_ui_app/widgets/my_text_field.dart';

class A02PageUI extends StatefulWidget {
  const A02PageUI({super.key});

  @override
  createState() => _A02PageUIState();
}

class _A02PageUIState extends State<A02PageUI> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 70),
        child: Column(
          children: [
            Text(
              'Welcome Back',
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
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF464444),
                ),
              ),
            ),
            SizedBox(height: 50),
            MyTextField(
              text: 'Username , Email & Phone Number',
            ),
            SizedBox(height: 10),
            MyTextField(
              text: 'Password',
              isPassword: true,
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Forgot Password?',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 25),
            MyButton(
              text: 'Sign in',
              color: Color(0xFFF89AEE),
              fontSize: 22,
              fontWeight: FontWeight.w700,
              redius: 15,
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Color(0xFFF89AEE),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text('Or Sign up With'),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFF89AEE),
                          Colors.white,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                    onPressed: () {},
                    width: 52,
                    height: 52,
                    color: Color(0xFFECE9EC),
                    redius: 50,
                    child:
                        Image(image: AssetImage('assets/images/a/imga2.png'))),
                SizedBox(width: 20),
                MyButton(
                    onPressed: () {},
                    width: 52,
                    height: 52,
                    color: Color(0xFFECE9EC),
                    redius: 50,
                    child:
                        Image(image: AssetImage('assets/images/a/imga3.png'))),
                SizedBox(width: 20),
                MyButton(
                    onPressed: () {},
                    width: 52,
                    height: 52,
                    color: Color(0xFFECE9EC),
                    redius: 50,
                    child:
                        Image(image: AssetImage('assets/images/a/imga4.png'))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
