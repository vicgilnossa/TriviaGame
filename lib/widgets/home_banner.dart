import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.4],
              colors: [Color(0xffBD69FE), Color(0xff9142FD)])),
      margin: const EdgeInsets.only(left: 42, top: 97),
      width: 328,
      height: 200,
      child: Stack(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 25, right: 8),
                  child: Container(
                    width: 134,
                    height: 72,
                    child: Text("Let´s Play and Win!",
                        style: GoogleFonts.sen(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                            fontSize: 26,
                            color: const Color(0xffFFFFFF))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 25, right: 8),
                  child: Container(
                    width: 135,
                    height: 48,
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        style: GoogleFonts.sen(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xffFFFFFF))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 25,
                  ),
                  child: Container(
                    width: 20,
                    height: 20,
                    child: const Image(
                        image: AssetImage("assets/bannerarrow.png")),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Container(
                width: 67,
                height: 158,
                color: Color(0xffC1E5FF),
              ),
            ),
            Container(
              width: 67,
              height: 108,
              color: Color(0xffC1E5FF),
            )
          ],
        ),
      ]),
    );
  }
}