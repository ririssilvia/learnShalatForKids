
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/gis.dart';

class AppBarJadwalWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarJadwalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: 
        Color.fromARGB(255, 60, 136, 199),
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lokasi Anda Sekarang",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 11.0,
                  ),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(28),
                        onTap: () {},
                        child: const Icon(Icons.my_location),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Kota Malang',
                        style: GoogleFonts.poppins(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Iconify(
                Gis.compass_rose_n,
                size: 60,
                color: Colors.black.withOpacity(0.75),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(97);
}
