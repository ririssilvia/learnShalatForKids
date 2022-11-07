
import 'package:aplikasibelajarsholat/page/gerakanSholat/gerakan_sholat_page.dart';
import 'package:aplikasibelajarsholat/page/gerakanSholat/headerGerakan.dart';
import 'package:aplikasibelajarsholat/page/home/header.dart';
import 'package:aplikasibelajarsholat/page/home/menuAlertSholat.dart';
import 'package:aplikasibelajarsholat/page/niatSholat/niat_sholat_page.dart';
import 'package:flutter/material.dart';

class GerakanSholat extends StatefulWidget {
  const GerakanSholat({Key? key}) : super(key: key);

  @override
  _GerakanSholatState createState() => _GerakanSholatState();
}

class _GerakanSholatState extends State<GerakanSholat> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 211, 241),
      body: Padding(
        padding: EdgeInsets.only(top: 2.0),
        child: ListView(
          children: <Widget>[
            HeaderGerakanSholat(),
            Row(
              //ROW 1
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 87, 134),
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
                      EdgeInsets.only(top: 1.0, left: 20, right: 20, bottom: 20),
                      //EdgeInsets.all(1.0),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                       //nav
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_1.png"),
                            height: 105,
                            width: 105,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Takbiratul Ihram",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 87, 134),
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
                    EdgeInsets.only(top: 1.0, left: 20, right: 20, bottom: 20),
                  child: Expanded(
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
                            image: AssetImage("assets/images/bg_2.png"),
                            height: 105,
                            width: 105,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Iftitah",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
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
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 29, 87, 134),
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
                      EdgeInsets.only(top: 1.0, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NiatSholat()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_3.png"),
                            height: 105,
                            width: 105,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Ruku'",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 29, 87, 134),
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
                      EdgeInsets.only(top: 1.0, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NiatSholat()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_4.png"),
                            height: 105,
                            width: 105,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "I'tidal",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //ROW 3
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 29, 87, 134),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(
                      top: 1.0, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NiatSholat()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_5.png"),
                            height: 105,
                            width: 105,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Sujud",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 29, 87, 134),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(
                      top: 1.0, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NiatSholat()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_6.png"),
                            height: 97,
                            width: 97,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Duduk tasyahud awal",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //ROW 4
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 87, 134),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(
                      top: 1.0, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NiatSholat()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_7.png"),
                            height: 97,
                            width: 97,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Duduk tasyahud akhir",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 29, 87, 134),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(
                      top: 1.0, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NiatSholat()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_8.png"),
                            height: 105,
                            width: 105,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Salam",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
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
