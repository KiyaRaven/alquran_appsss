import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Al-Quran",
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          SurahTileWidget(
            namaSurah: "al-Fatihah",
            tempatTurun: "Makkiyah",
            jumlahAyat: 7,
            nomorSurah: 1,
          ),
          SurahTileWidget(
            namaSurah: "al-baqarah",
            tempatTurun: "Madaniyah",
            jumlahAyat: 286,
            nomorSurah: 2,
          ),
          SurahTileWidget(
            namaSurah: "ali Imran",
            tempatTurun: "Madaniyah",
            jumlahAyat: 200,
            nomorSurah: 3,
          ),
          SurahTileWidget(
            namaSurah: "an-Nisa'a",
            tempatTurun: "Madaniyah",
            jumlahAyat: 176,
            nomorSurah: 4,
          ),
          SurahTileWidget(
            namaSurah: "al-Maidah",
            tempatTurun: "Madaniyah",
            jumlahAyat: 120,
            nomorSurah: 5,
          ),
          SurahTileWidget(
            namaSurah: "al-an'am",
            tempatTurun: "Makkiyah",
            jumlahAyat: 165,
            nomorSurah: 6,
          ),
          SurahTileWidget(
            namaSurah: "al-a'raf",
            tempatTurun: "Makkiyah",
            jumlahAyat: 206,
            nomorSurah: 7,
          ),
          SurahTileWidget(
            namaSurah: "al-anfal",
            tempatTurun: "Madaniyah",
            jumlahAyat: 75,
            nomorSurah: 8,
          ),
          SurahTileWidget(
            namaSurah: "al-a'raf",
            tempatTurun: "Makkiyah",
            jumlahAyat: 206,
            nomorSurah: 9,
          ),
        ],
      ),
    );
  }
}

class SurahTileWidget extends StatelessWidget {
  final String namaSurah;
  final String tempatTurun;
  final int jumlahAyat;
  final int nomorSurah;

  const SurahTileWidget(
      {Key? key,
      required this.namaSurah,
      required this.tempatTurun,
      required this.jumlahAyat,
      required this.nomorSurah})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).colorScheme.primary),
            child: Text("$nomorSurah"),
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                namaSurah,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text("$jumlahAyat ayat - $tempatTurun"),
            ],
          ),
        ],
      ),
    );
  }
}
