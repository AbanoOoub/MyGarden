import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';
import 'package:my_garden/model/question.dart';
import 'package:my_garden/screens/correct_screen.dart';
import 'package:my_garden/screens/wrong_screen.dart';

import '../questions_list.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key, required this.quizNumber}) : super(key: key);
  final int quizNumber;

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool isCorrect = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyColors mycolors = new MyColors();
    int questionNumber = widget.quizNumber;
    Question Q = questions[questionNumber];
    Color res1Color = mycolors.primary;
    Color res2Color = mycolors.primary;
    Color res3Color = mycolors.primary;
    Color rightAnsColor = mycolors.rightAns;
    Color wrongAnsColor = mycolors.wrongAns;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Image.asset(Q.img),
              const SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  color: res1Color,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 160,
                child: TextButton(
                  child: Center(
                    child: Text(
                      Q.res1,
                      style: TextStyle(color: mycolors.white, fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    getAnswer(Q.res1, Q.ans);
                    if (isCorrect) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CorrectScreen(
                                  currQuizNumber: questionNumber)));
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  WrongScreen(currQuizNumber: questionNumber)));
                    }
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: res2Color,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 160,
                child: TextButton(
                  child: Center(
                    child: Text(
                      Q.res2,
                      style: TextStyle(color: mycolors.white, fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    getAnswer(Q.res2, Q.ans);
                    if (isCorrect) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CorrectScreen(
                                  currQuizNumber: questionNumber)));
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  WrongScreen(currQuizNumber: questionNumber)));
                    }
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: res3Color,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 160,
                child: TextButton(
                  child: Center(
                    child: Text(
                      Q.res3,
                      style: TextStyle(color: mycolors.white, fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    getAnswer(Q.res3, Q.ans);
                    if (isCorrect) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CorrectScreen(
                                  currQuizNumber: questionNumber)));
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  WrongScreen(currQuizNumber: questionNumber)));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getAnswer(String userAns, String realAns) {
    AudioCache player = new AudioCache(prefix: 'assets/');
    if (userAns == realAns) {
      player.play('rightAns_sound.mp3');
      isCorrect = true;
    } else {
      player.play('wrongAns_sound.mp3');
      isCorrect = false;
    }
  }
}
