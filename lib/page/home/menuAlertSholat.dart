import 'package:aplikasibelajarsholat/page/bacaansholat/bacaan_sholat_page.dart';
import 'package:aplikasibelajarsholat/page/niatSholat/niat_sholat_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AlertDialogMenu extends StatelessWidget {
  const AlertDialogMenu({
    Key? key,
  }) : super(key: key);
  // final Size size;

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height * 1;
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 148, 201, 236),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      title: Center(child: Text("Bacaan Sholat",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      EdgeInsets.all(40),
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
                            image: AssetImage("assets/images/bg_niat2.jpg"),
                            height: 125,
                            width: 125,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Niat Sholat",
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
                      EdgeInsets.all(40),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BacaanSholat()));
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/images/bg_bacaan2.jpg"),
                            height: 125,
                            width: 125,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
