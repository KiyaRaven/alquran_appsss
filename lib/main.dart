import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_api/core/utils/theme_utils.dart';
import 'package:quran_api/providers/surah_provider.dart';
import 'package:quran_api/views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SurahProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: themeQuranApp,
      home: HomePage(),
      ),
    );
  }
}
