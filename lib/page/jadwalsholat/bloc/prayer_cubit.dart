import 'package:aplikasibelajarsholat/page/jadwalsholat/models/prayer_time_api_model.dart';
import 'package:aplikasibelajarsholat/page/jadwalsholat/services/prayer_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit()
      : super(
          PrayerState(jadwalShalat: Jadwal()),
        );

  DateTime? selectedDate = DateTime.now();

  void getTime(
      {int tahun = 2022,
      int bulan = 01,
      int tanggal = 01,
      DateTime? date}) async {
    selectedDate = date;
    var service = await PrayerService()
        .getPrayerTime(tahun: tahun, bulan: bulan, tanggal: tanggal);
    emit(
      PrayerState(jadwalShalat: service.jadwal ?? Jadwal()),
    );
  }
}

class PrayerState {
  final Jadwal jadwalShalat;
  PrayerState({required this.jadwalShalat});
}
