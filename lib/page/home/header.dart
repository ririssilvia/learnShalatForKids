import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    // required this.size,
    required this.onChanged,
  }) : super(key: key);
  // final Size size;
  final ValueChanged onChanged;

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
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 50, 115, 168),
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
                    Navigator.pushNamed(context, '/');
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
                  'assets/images/bg_home.png',
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
                        'Home',
                        style: GoogleFonts.kreon(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Aplikasi Belajar Sholat For Kids',
                        style: GoogleFonts.kreon(
                          fontSize: 14,
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
