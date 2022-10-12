

import 'package:aplikasibelajarsholat/page/gerakanSholat/gerakan_sholat_page.dart';
import 'package:aplikasibelajarsholat/page/home/header.dart';
import 'package:aplikasibelajarsholat/page/home/menuAlertSholat.dart';
import 'package:aplikasibelajarsholat/page/niatSholat/niat_sholat_page.dart';
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
      body: Padding(
        padding: EdgeInsets.only(top: 2.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(
              onChanged: (value) {},
            ),
            Row(
              //ROW 1
              children: [
                Container(
                  height: 150,
                  width: 150,
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
                      EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
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
                  height: 150,
                  width: 150,
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
                      EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
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
                ),
              ],
            ),
            Row(
              //ROW 1
              children: [
                Container(
                  height: 150,
                  width: 150,
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
                      EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        //nav route
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
                            "Surat Surat Pendek",
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
                      EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        //nav route
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
