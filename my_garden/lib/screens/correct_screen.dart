import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';
import 'package:my_garden/model/question.dart';
import 'package:my_garden/screens/quiz_screen.dart';

import '../questions_list.dart';

class CorrectScreen extends StatelessWidget {
  const CorrectScreen({Key? key, required this.currQuizNumber})
      : super(key: key);
  final int currQuizNumber;

  @override
  Widget build(BuildContext context) {
    MyColors myColors = new MyColors();
    List<Question> Q = questions;
    return Scaffold(
      backgroundColor: myColors.rightAns,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 120),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/right.png'),
              SizedBox(height: 60),
              Text('SUCCESS',
                  style: TextStyle(
                    fontSize: 50,
                    color: myColors.white,
                    fontWeight: FontWeight.bold,
                  )),
              Text('your answer is correct',
                  style: TextStyle(
                    fontSize: 15,
                    color: myColors.white,
                  )),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  color: myColors.rightAns,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: myColors.white,
                    width: 1,
                  ),
                ),
                height: 50,
                width: 160,
                child: TextButton(
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(color: myColors.white, fontSize: 20),
                    ),
                  ),
                  onPressed: () {
                    if (currQuizNumber + 1 < Q.length) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuizScreen(
                                  quizNumber: (currQuizNumber + 1))));
                    } else {
                      Navigator.pop(context);
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
}
