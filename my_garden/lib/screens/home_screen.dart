import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';
import 'package:my_garden/screens/learn_screen.dart';
import 'package:my_garden/screens/quizes_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyColors mycolors = new MyColors();

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              children: [
                Text(
                  'Welcome, Let\'s Start',
                  style: TextStyle(color: mycolors.primary, fontSize: 23),
                ),
                Text(
                  'we are happy to learn together',
                  style: TextStyle(color: mycolors.primary, fontSize: 15),
                ),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: mycolors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 150,
                    child: TextButton(
                      child: Center(
                        child: Text(
                          'Learn',
                          style: TextStyle(color: mycolors.white, fontSize: 30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LearnScreen()),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: mycolors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 150,
                    child: TextButton(
                      child: Center(
                        child: Text(
                          'Quiz',
                          style: TextStyle(color: mycolors.white, fontSize: 30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuizListScreen()),
                        );
                      },
                    ),
                  ),
                ),
                Center(child: Image.asset('images/jungle.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
