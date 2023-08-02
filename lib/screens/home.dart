import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff162E79),
        body: Column(
          children: const [
            HomeBanner(),
            SizedBox(
              height: 67,
            ),
            QuestionaryGrid(),
          ],
        ));
  }
}
