import 'package:eatit/Login.dart';
import 'package:flutter/material.dart';
import 'package:eatit/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    // Set a delay of 3 seconds before navigating to the next screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/logo.png', // Replace with the path to your logo image
                            width: MediaQuery.of(context).size.width*0.7,
                            height:  MediaQuery.of(context).size.width*0.7,
                            // You can customize the width and height according to your needs
                          ),
                          SizedBox(height: 16.0),

                          // Your Title
                          Text(
                            'Eat It',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
              )
          ),
          Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Your Kitchen Partner',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 20,
                    color: textColor,
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
