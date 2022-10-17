import 'package:aplikasibelajarsholat/page/home/main_page.dart';
import 'package:aplikasibelajarsholat/page/quran/details/detail_surah_view.dart';
import 'package:aplikasibelajarsholat/page/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        scaffoldBackgroundColor: Color.fromARGB(255, 148, 201, 236),
      ),
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => const MainPage(),
        '/detail-surah': (context) => const DetailSurahView(),
      },
    );
  }
}
