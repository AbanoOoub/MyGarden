import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';

import '../animals_list.dart';

class LearnScreen extends StatefulWidget {
  LearnScreen({Key? key}) : super(key: key);

  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnScreen> {
  MyColors myColors = new MyColors();
  List<Widget> myAnimals = animals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColors.primary,
        title: Text('Learn'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GridView.count(
          crossAxisCount: 2,
          children: myAnimals,
        ),
      ),
    );
  }
}
