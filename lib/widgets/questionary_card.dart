import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionaryCard extends StatelessWidget {
  const QuestionaryCard({
    Key? key,
    required this.titulo,
    required this.numQuestions,
    required this.gradient1,
    required this.gradient2,
    required this.route,
  }) : super(key: key);

  final String titulo, numQuestions, route;
  final Color gradient1;
  final Color gradient2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 159,
        height: 164,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.7],
                colors: [gradient1, gradient2]),
            borderRadius: BorderRadius.circular(8)),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Image(image: AssetImage("assets/questionaryicon.png")),
          ),
          SizedBox(
            width: 82,
            height: 36,
            child: Center(
                child: Text(titulo,
                    style: GoogleFonts.sen(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        fontSize: 13,
                        color: const Color(0xffFFFFFF)))),
          ),
          SizedBox(
            width: 54,
            child: Text(numQuestions,
                style: GoogleFonts.sen(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 8,
                    color: const Color(0xffFFFFFF))),
          )
        ]),
      ),
    );
  }
}

