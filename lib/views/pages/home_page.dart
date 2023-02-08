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
    super.initState();
    // TODO: implement initState

// cara memanggil provider dengan cara pertama
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
        actions: [
          IconButton(
            onPressed: () {
              SurahProvider surahProvider =
                  Provider.of<SurahProvider>(context, listen: false);
              surahProvider.deleteDataSurah();
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      // cara memanggil provider dengan cara kedua

      body: Consumer<SurahProvider>(
        builder: ((context, provider, _) => RefreshIndicator(
              onRefresh: () async {
                await provider.getdataSurah();
              },
              child: ListView.builder(
                itemCount: provider.dataSurah.length,
                itemBuilder: ((context, index) => SurahTileWidget(
                      namaSurah: provider.dataSurah[index].namaSurah,
                      tempatTurun: provider.dataSurah[index].tempatTurun,
                      jumlahAyat: provider.dataSurah[index].jumlahAyat,
                      nomorSurah: provider.dataSurah[index].noSurah,
                    )),
              ),
            )),
      ),
    );
  }
}
