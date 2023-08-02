import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/music_controller.dart';


class ScoreMusicScreen extends StatelessWidget {
  const ScoreMusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MusicController _qnController = Get.put(MusicController());
    return Scaffold(
        backgroundColor: Color(0xff2D49A1),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 180),
              child: Text("Puntaje",
                  style: GoogleFonts.sen(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      fontSize: 70,
                      color: const Color(0xffE6E6E6))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 150),
              child: Text(
                  "${_qnController.numOfCorrectAns}/${_qnController.questions.length}",
                  style: GoogleFonts.sen(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      fontSize: 70,
                      color: const Color(0xffE6E6E6))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 60),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "home");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF7B20),
                  ),
                  child: SizedBox(
                      width: 300,
                      height: 60,
                      child: Center(
                          child: Text("Volver",
                              style: GoogleFonts.sen(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                  color: const Color(0xffE6E6E6)))))),
            )
          ],
        ));
  }
}
