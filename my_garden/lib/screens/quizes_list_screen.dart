import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';

import '../quiz_list.dart';

class QuizListScreen extends StatefulWidget {
  const QuizListScreen({Key? key}) : super(key: key);

  @override
  _QuizListScreenState createState() => _QuizListScreenState();
}

class _QuizListScreenState extends State<QuizListScreen> {
  MyColors myColors = new MyColors();
  List<Widget> quizes = quizList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColors.primary,
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 3,
          children: quizes,
        ),
      ),
    );
  }
}
