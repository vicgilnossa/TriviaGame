import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:questionary_app/classes/question.dart';
import 'package:questionary_app/controllers/music_controller.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MusicController questionController = Get.put(MusicController());
    return Scaffold(
        backgroundColor: const Color(0xff2D49A1),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const _Title(),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.only(left: 32, bottom: 18),
                width: 250,
                height: 32,
                child: Obx(() {
                  return Text(
                      "Pregunta ${questionController.questionNumber.value}/${questionController.questions.length}",
                      style: GoogleFonts.sen(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: const Color(0xffFFFFFF)));
                }),
              ),
              const _QuestionCounter(),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                  child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: questionController.pageController,
                onPageChanged: questionController.updateTheQnNum,
                itemCount: questionController.questions.length,
                itemBuilder: (context, index) => _QuestionCard(
                  question: questionController.questions[index],
                ),
              )),
            ],
          ),
        ));
  }
}

class _QuestionCard extends StatelessWidget {
  const _QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    MusicController _controller = Get.put(MusicController());
    return Container(
      margin: const EdgeInsets.only(left: 32, bottom: 40),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 350,
            child: Text(question.question,
                style: GoogleFonts.sen(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: const Color(0xffE6E6E6))),
          ),
          const SizedBox(
            height: 18,
          ),
          ...List.generate(
              question.options.length,
              (index) => _Option(
                    text: question.options[index],
                    press: () => _controller.checkAns(question, index),
                    index: index,
                  )),
          const SizedBox(
            height: 18,
          ),
          ElevatedButton(
              onPressed: () {
                _controller.nextQuestion();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF7B20),
              ),
              child: SizedBox(
                  width: 300,
                  height: 60,
                  child: Center(
                      child: Text("Saltar",
                          style: GoogleFonts.sen(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                              color: const Color(0xffE6E6E6))))))
        ],
      ),
    );
  }
}

class _Option extends StatelessWidget {
  const _Option({
    Key? key,
    required this.text,
    required this.press,
    required this.index,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MusicController>(
        init: MusicController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return Colors.green;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return Colors.red;
              }
            }
            return Color(0xff162E79);
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: getTheRightColor()),
                  color: const Color(0xff162E79),
                  borderRadius: BorderRadius.circular(8)),
              width: 335,
              height: 60,
              child: Center(
                child: Text(text,
                    style: GoogleFonts.sen(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: const Color(0xffE6E6E6))),
              ),
            ),
          );
        });
  }
}

class _QuestionCounter extends StatelessWidget {
  const _QuestionCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _ProgressBar(),
      ],
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      width: 311,
      height: 8,
      decoration: BoxDecoration(
          color: const Color(0xff162E79),
          borderRadius: BorderRadius.circular(8)),
      child: GetBuilder<MusicController>(
          init: MusicController(),
          builder: (controller) {
            return Stack(children: [
              LayoutBuilder(
                  builder: (context, constraints) => Container(
                        width:
                            constraints.maxWidth * controller.animation.value,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffFF7B20)),
                      ))
            ]);
          }),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 104,
        right: 104,
      ),
      width: 200,
      child: Center(
        child: Text("Música",
            style: GoogleFonts.sen(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w800,
                fontSize: 28,
                color: const Color(0xffFFFFFF))),
      ),
    );
  }
}
