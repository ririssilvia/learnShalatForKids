import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'background.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Learn Sholat',
                style: GoogleFonts.kreon(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            Text(
              "Aplikasi Belajar Sholat Untuk Anak Anak",
              style: GoogleFonts.kreon(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: size.height * 0.05),
            Hero(
              tag: 'logoAnimation',
              child: Image.asset(
                'assets/images/ic_sp.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 40,
              child: TextButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  {
                    Navigator.pushNamed(context, '/home');
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
