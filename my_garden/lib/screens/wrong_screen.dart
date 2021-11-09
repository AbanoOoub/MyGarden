import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';
import 'package:my_garden/screens/quiz_screen.dart';

class WrongScreen extends StatelessWidget {
  const WrongScreen({Key? key, required this.currQuizNumber}) : super(key: key);
  final int currQuizNumber;

  @override
  Widget build(BuildContext context) {
    MyColors myColors = new MyColors();

    return Scaffold(
      backgroundColor: myColors.wrongAns,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 120),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/wrong.png'),
              SizedBox(height: 60),
              Text('OOOPS',
                  style: TextStyle(
                    fontSize: 50,
                    color: myColors.white,
                    fontWeight: FontWeight.bold,
                  )),
              Text('your answer is wrong',
                  style: TextStyle(
                    fontSize: 15,
                    color: myColors.white,
                  )),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  color: myColors.wrongAns,
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
                      'Try Again',
                      style: TextStyle(color: myColors.white, fontSize: 20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                QuizScreen(quizNumber: (currQuizNumber))));
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
