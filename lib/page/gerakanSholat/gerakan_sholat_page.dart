
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
      body: Padding(
        padding: EdgeInsets.only(top: 2.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderGerakanSholat(),
            Row(
              //ROW 1
              children: [
                Container(
                  height: 150,
                  width: 150,
                  
                  decoration: BoxDecoration(
                    // color: Colors.white,
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
                            height: 120,
                            width: 120,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Takbiratul Ihram",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
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
                            height: 120,
                            width: 120,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Iftitah",
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
            Row(
              //ROW 2
              children: [
                Container(
                  height: 150,
                  width: 150,
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
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Ruku'",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
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
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "I'tidal",
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
            Row(
              //ROW 3
              children: [
                Container(
                  height: 150,
                  width: 150,
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
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Sujud",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
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
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Duduk tasyahud awal",
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
            Row(
              //ROW 4
              children: [
                Container(
                  height: 150,
                  width: 150,
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
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Duduk tasyahud akhir",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
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
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Salam",
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
