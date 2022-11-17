import 'package:aplikasibelajarsholat/page/home/main_page.dart';
import 'package:aplikasibelajarsholat/page/jadwalsholat/bloc/prayer_cubit.dart';
import 'package:aplikasibelajarsholat/page/quran/details/detail_surah_view.dart';
import 'package:aplikasibelajarsholat/page/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<PrayerCubit>(
            create: (BuildContext context) => PrayerCubit(),
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [Locale('id')],
          theme: ThemeData(
            primaryColor: Colors.indigo,
            //scaffoldBackgroundColor: Color.fromARGB(255, 148, 201, 236),
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashScreen(),
            '/home': (context) => const MainPage(),
            '/detail-surah': (context) => const DetailSurahView(),
          },
        ));
  }
}
