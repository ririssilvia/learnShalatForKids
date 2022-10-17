import 'dart:convert';

import 'package:aplikasibelajarsholat/page/quran/models/juz_model.dart'as detailJuz;

import 'package:aplikasibelajarsholat/page/quran/models/surah_model.dart';
import 'package:aplikasibelajarsholat/page/quran/models/detail_surah_model.dart' as detailSurah;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomeController with ChangeNotifier {


  static List<detailJuz.DetailJuz> allJuz = [];

  static ValueNotifier<bool> adaDataAllJuz = ValueNotifier(false);

  static List<SurahModel> allSurah = [];
  static Future<List<SurahModel>> getAllSurah() async {
    Uri url =
        Uri.parse('https://quran-rdr76wqee-fadillahnurfaq.vercel.app/surah');
    var res = await http.get(url);
    List? data = (jsonDecode(res.body) as Map<String, dynamic>)['data'];
    if (data == null || data.isEmpty) {
      return [];
    } else {
      allSurah = data.map((e) => SurahModel.fromJson(e)).toList();
      return allSurah;
    }
  }

  static Future<List<detailJuz.DetailJuz>> getAllJuz() async {
    for (int i = 1; i <= 30; i++) {
      Uri url =
          Uri.parse("https://quran-rdr76wqee-fadillahnurfaq.vercel.app/juz/$i");
      var res = await http.get(url);

      Map<String, dynamic> data =
          (json.decode(res.body) as Map<String, dynamic>)['data'];

      detailJuz.DetailJuz juz = detailJuz.DetailJuz.fromJson(data);
      allJuz.add(juz);
    }
    return allJuz;
  }
}
