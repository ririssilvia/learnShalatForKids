

import 'package:aplikasibelajarsholat/page/gerakanSholat/gerakan_sholat_page.dart';
import 'package:aplikasibelajarsholat/page/home/header.dart';
import 'package:aplikasibelajarsholat/page/home/menuAlertSholat.dart';
import 'package:aplikasibelajarsholat/page/jadwalsholat/screens/jadwal_solat_screen.dart';
import 'package:aplikasibelajarsholat/page/niatSholat/niat_sholat_page.dart';
import 'package:aplikasibelajarsholat/page/quran/home_quran.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 211, 241),
      body: Padding(
        padding: EdgeInsets.only(top: 2.0),
        child: Column(
          children: <Widget>[
            HeaderWithSearchBox(
              onChanged: (value) {},
            ),
            Row(
              //ROW 1
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin:
                      EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialogMenu()
                                );
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_baca.jpg"),
                            height: 120,
                            width: 120,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Bacaan Sholat",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin:
                      EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GerakanSholat()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/bg_gerakan.jpg"),
                          height: 120,
                          width: 120,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Gerakan Sholat",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //ROW 2
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin:
                      EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeQuran()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_surah.jpg"),
                            height: 120,
                            width: 120,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Alquran",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin:
                      EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JadwalSolatScreen()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_jadwal.jpg"),
                            height: 120,
                            width: 120,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Jadwal Sholat",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
