// ignore: file_names
import 'package:aplikasibelajarsholat/page/splashScreen/body.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 211, 241),
      body: BodyWelcome(),
    );
  }
}
