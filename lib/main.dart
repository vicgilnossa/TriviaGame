import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        "home": (_) => const HomeScreen(),
        "game": (_) => const VideogameScreen(),
        "music": (_) => const MusicScreen(),
        "movie": (_) => const MovieScreen(),
      },
      title: 'Material App',
      home: const HomeScreen(),
    );
  }
}
