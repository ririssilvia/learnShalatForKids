import 'package:aplikasibelajarsholat/page/quran/controller/detail_surah_controller.dart';
import 'package:aplikasibelajarsholat/page/quran/controller/home_controller.dart';
import 'package:aplikasibelajarsholat/page/quran/models/surah_model.dart';

import 'package:flutter/material.dart';

import 'package:aplikasibelajarsholat/page/quran/models/juz_model.dart'
    as detailJuz;
import 'package:google_fonts/google_fonts.dart';

class HomeQuran extends StatelessWidget {
  const HomeQuran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 211, 241),
      body: DefaultTabController(
        length: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ValueListenableBuilder<HomeController>(
                  valueListenable: DetailSurahController.homeC,
                  builder: (_, value, __) {
                    return ValueListenableBuilder<HomeController>(
                      valueListenable: DetailSurahController.homeC,
                      builder: (_, value, __) {
                        return FutureBuilder<Map<String, dynamic>?>(
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 100),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 10, 107, 185),
                                      Color.fromARGB(255, 34, 150, 245),
                                    ],
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  // Validate returns true if the form is valid, or false otherwise.
                                                  {
                                                    Navigator.pushNamed(
                                                        context, '/home');
                                                  }
                                                },
                                                icon: const Icon(
                                                    Icons.arrow_back,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(width: 10),
                                            ],
                                          ),
                                          const SizedBox(height: 30),
                                          const Text(
                                            "Loading...",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -60,
                                      right: 0,
                                      child: SizedBox(
                                        width: 200,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/images/quran2.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                            Map<String, dynamic>? lastRead = snapshot.data;
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 10, 107, 185),
                                    Color.fromARGB(255, 34, 150, 245),
                                  ],
                                ),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                child: InkWell(
                                  onLongPress: () {
                                    if (lastRead != null) {}
                                  },
                                  onTap: () {
                                    if (lastRead != null) {
                                      switch (lastRead["via"]) {
                                        case "juz":
                                          print("GO TO JUZ");
                                          detailJuz.DetailJuz? juz =
                                              HomeController
                                                  .allJuz[lastRead["juz"] - 1];
                                          String nameStart = juz.juzStartInfo
                                                  ?.split(" - ")
                                                  .first ??
                                              "";
                                          String nameEnd = juz.juzEndInfo
                                                  ?.split(" - ")
                                                  .first ??
                                              "";

                                          List<SurahModel> rawAllSurahInJuz =
                                              [];
                                          List<SurahModel> allSurahInJuz = [];

                                          for (SurahModel item
                                              in HomeController.allSurah) {
                                            rawAllSurahInJuz.add(item);
                                            if (item.name!.transliteration!
                                                    .id ==
                                                nameEnd) {
                                              break;
                                            }
                                          }

                                          for (SurahModel item
                                              in rawAllSurahInJuz.reversed
                                                  .toList()) {
                                            allSurahInJuz.add(item);
                                            if (item.name!.transliteration!
                                                    .id ==
                                                nameStart) {
                                              break;
                                            }
                                          }
                                          Navigator.pushNamed(
                                            context,
                                            '/detail-juz',
                                          );
                                          break;
                                        default:
                                          Navigator.pushNamed(
                                            context,
                                            '/detail-surah',
                                            arguments: {
                                              "name": lastRead["surah"]
                                                  .toString()
                                                  .replaceAll("+", "'")
                                                  .toUpperCase(),
                                              "number":
                                                  lastRead["number_surah"],
                                            },
                                          );
                                      }
                                      print(lastRead);
                                    }
                                  },
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    // Validate returns true if the form is valid, or false otherwise.
                                                    {
                                                      Navigator.pushNamed(
                                                          context, '/home');
                                                    }
                                                  },
                                                  icon: const Icon(
                                                      Icons.arrow_back,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              'Al-Quran',
                                              style: GoogleFonts.kreon(
                                                fontSize: 40,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              '-------------------------------------',
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -60,
                                        right: 0,
                                        child: SizedBox(
                                          width: 200,
                                          height: 250,
                                          child: Image.asset(
                                            'assets/images/quran2.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }),
              Expanded(
                child: TabBarView(
                  children: [
                    //* Bagian Detail surah
                    FutureBuilder<List<SurahModel>>(
                      future: HomeController.getAllSurah(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (!snapshot.hasData) {
                          return const Center(
                            child: Text("Tidak ada data."),
                          );
                        }
                        // print(snapshot.data);
                        return ListView.builder(
                          itemCount: snapshot.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            SurahModel surah = snapshot.data![index];
                            return ListTile(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detail-surah',
                                  arguments: {
                                    "name": surah.name!.transliteration!.id!
                                        .toUpperCase(),
                                    "number": surah.number,
                                  },
                                );
                              },
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/octagonal.png",
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    // "${surah?.nomor ?? '0'}",
                                    "${surah.number ?? '0'}",
                                  ),
                                ),
                              ),
                              title: Text(
                                // surah?.namaLatin ?? 'Tidak ada data',
                                surah.name?.transliteration?.id ??
                                    'Tidak ada data',
                              ),
                              subtitle: Text(
                                "${surah.numberOfVerses ?? 'Tidak ada data'} Ayat | ${surah.revelation?.id ?? 'Tidak ada data'}",
                              ),
                              trailing:
                                  Text(surah.name?.short ?? "Tidak ada data"),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
