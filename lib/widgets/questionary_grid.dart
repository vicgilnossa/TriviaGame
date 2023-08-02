import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets.dart';

class QuestionaryGrid extends StatelessWidget {
  const QuestionaryGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35),
      width: 328,
      height: 403,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 143,
            height: 32,
            child: Text("Cuestionarios",
                style: GoogleFonts.sen(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: const Color(0xffFFFFFF))),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              QuestionaryCard(
                titulo: "Videojuegos",
                numQuestions: "10 preguntas",
                gradient1: Color(
                  0xffFEE2CF,
                ),
                gradient2: Color(0xffFE9A54),
                route: 'game',
              ),
              SizedBox(
                width: 10,
              ),
              QuestionaryCard(
                titulo: "Música",
                numQuestions: "10 preguntas",
                gradient1: Color(
                  0xffDAEDF9,
                ),
                gradient2: Color(0xff0289E1),
                route: 'music',
              )
            ],
          ),
          const SizedBox(
            height: 33,
          ),
          Row(
            children: const [
              QuestionaryCard(
                titulo: "Cine",
                numQuestions: "20 preguntas",
                gradient1: Color(
                  0xffFFD7E7F,
                ),
                gradient2: Color(0xffFE5196),
                route: 'movie',
              ),
              SizedBox(
                width: 10,
              ),
              QuestionaryCard(
                titulo: "Ciencia",
                numQuestions: "10 preguntas",
                gradient1: Color(
                  0xffD5FBCE,
                ),
                gradient2: Color(0xff34A21F),
                route: '',
              )
            ],
          )
        ],
      ),
    );
  }
}
