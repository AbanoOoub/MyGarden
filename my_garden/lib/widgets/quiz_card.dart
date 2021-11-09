import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';
import 'package:my_garden/screens/quiz_screen.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({Key? key, required this.quizNumber}) : super(key: key);

  final int quizNumber;
  @override
  Widget build(BuildContext context) {
    MyColors myColors = new MyColors();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: TextButton(
          child: Center(
            child: Text(
              '$quizNumber',
              style: TextStyle(color: myColors.white, fontSize: 25),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      QuizScreen(quizNumber: (quizNumber - 1))),
            );
          },
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: myColors.shadow.withOpacity(0.4), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 3, // blur radius
              offset: Offset(-1, 2), // changes position of shadow
            ),
          ],
          color: myColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
