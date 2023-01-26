import 'package:dio/dio.dart';
import 'package:quran_api/core/utils/general_utils.dart';
import 'package:quran_api/data/models/surah_model.dart';

class SurahRepository {
  Future<List<SurahModel>> getListSurah() async {
    List<SurahModel> listSurah = [];
    try {
      var response = await Dio().get("http://api.alquran.cloud/v1/surah");

      /// (response.data = ['data'] as List);

      for (int i = 0; i < (response.data['data'] as List).length; i++) {
        var dataSurah = response.data['data'][i];
        var model = SurahModel(
          noSurah: dataSurah['number'],
          jumlahAyat: dataSurah['numberOfAyahs'],
          namaSurah: dataSurah['englishName'],
          tempatTurun: dataSurah['revelationType'],
        );
        listSurah.add(model);
      }
    } catch (e) {
      printOnDebug(e);
    }
    return listSurah;
  }

  getDetailSurah() {}
}
