import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/widgets/my_button.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF390050),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/home/img.png'),
              SizedBox(height: 25),
              MyButton(
                  text: 'Go to A Page',
                  color: Color(0xFFF89AEE),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/a01');
                  }),
              SizedBox(height: 25),
              MyButton(
                  text: 'Go to B Page',
                  color: Color(0xFF1F41BB),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/b01');
                  }),
              SizedBox(height: 25),
              MyButton(
                  text: 'Go to C Page',
                  color: Color(0xFF00B140),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/c01');
                  }),
              SizedBox(height: 25),
              MyButton(
                  text: 'Go to D Page',
                  color: Color(0xFF35C2C1),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/d01');
                  }),
              SizedBox(height: 25),
              MyButton(
                  text: 'Go to E Page',
                  color: Color(0xFFF69515),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/e01');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
