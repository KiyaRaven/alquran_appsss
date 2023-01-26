import 'package:flutter/material.dart';

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
