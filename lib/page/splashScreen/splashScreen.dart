import 'package:aplikasibelajarsholat/page/splashScreen/body.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 211, 241),
      body: BodyWelcome(),
    );
  }
}
