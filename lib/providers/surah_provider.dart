import 'package:flutter/cupertino.dart';
import 'package:quran_api/data/models/surah_model.dart';
import 'package:quran_api/data/repositories/surah_repository.dart';

class SurahProvider extends ChangeNotifier {
  List<SurahModel> dataSurah = [];

  getdataSurah() async {
    // panggil surah repository
    SurahRepository surahRepository = SurahRepository();

    // kita suruh repository untuk get data surah dari API
    var data = await surahRepository.getListSurah();
    dataSurah = data;

    notifyListeners();
  }

  deleteDataSurah() {
    dataSurah = [];
    notifyListeners();
  }
}
