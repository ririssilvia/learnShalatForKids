import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderGerakanSholat extends StatelessWidget {
  const HeaderGerakanSholat({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 36 + 20.0,
            ),
            height: 160,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 78, 153, 214),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  blurRadius: 10,
                )
              ],
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  {
                    Navigator.pushNamed(context, '/home');
                  }
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 2.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/bg_gerak2.png',
                  width: 200,
                  height: 200,
                ),
              )),
          Container(
              padding: EdgeInsets.only(top: 50.0, left: 10.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Gerakan Sholat',
                        style: GoogleFonts.kreon(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Gerakan Sholat wajib 5 Waktu',
                        style: GoogleFonts.kreon(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
