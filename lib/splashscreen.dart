import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context,MaterialPageRoute(builder: (context)=>que()) ); });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('image/2.png'),
      ),
    );
  }
}
