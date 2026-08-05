import 'package:flutter/material.dart';
import 'signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/8140 1.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 495.26,
            left: 182.76,
            child: Image.asset(
              'assets/images/Group.png',
              width: 48.47,
              height: 60.36,
            ),
          ),

          Positioned(
            top: 577.28,
            left: 53.5,
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  Text(
                    'Welcome\nto our store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      fontSize: 48,
                      height: 1.2,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Get your groceries in as fast as one hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xB2FCFCFC),
                    ),
                  ),


                ],
              ),
            ),

          ),
          Positioned(
            top: 770.16,
            left: 30.5,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/button.png',
                width: 353,
                height: 67,
              ),
            ),
          ),



        ]
      )

    );
  }
}


