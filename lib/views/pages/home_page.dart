import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:quran_api/providers/surah_provider.dart';
import 'package:quran_api/views/widgets/surah_tile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState

    SurahProvider surahProvider =
        Provider.of<SurahProvider>(context, listen: false);
    surahProvider.getdataSurah();
  }

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
      body: Consumer<SurahProvider>(
        builder: ((context, child, _) => ListView.builder(
              itemCount: child.dataSurah.length,
              itemBuilder: ((context, index) => SurahTileWidget(
                    namaSurah: child.dataSurah[index].namaSurah,
                    tempatTurun: child.dataSurah[index].tempatTurun,
                    jumlahAyat: child.dataSurah[index].jumlahAyat,
                    nomorSurah: child.dataSurah[index].noSurah,
                  )),
            )),
      ),
    );
  }
}
