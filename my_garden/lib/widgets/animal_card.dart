import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';
import 'package:my_garden/screens/animal_screen.dart';

import '../model/animal.dart';
import '../model/mycolors.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({Key? key, required this.animal}) : super(key: key);

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    MyColors myColors = new MyColors();

    final data = MediaQuery.of(context);
    Orientation orientation = data.orientation;
    bool portrait = false;

    if (orientation.index == Orientation.portrait.index) {
      portrait = true;
    } else {
      portrait = false;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Container(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  animal.name,
                  style: TextStyle(
                      color: myColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              width: double.infinity,
              //height: 30,
              height:
                  portrait ? data.size.height * 0.037 : data.size.width * 0.1,
              decoration: BoxDecoration(
                color: myColors.primary,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              width: double.infinity,
              //height: 130,
              height:
                  portrait ? data.size.height * 0.16 : data.size.width * 0.3,
              child: TextButton(
                child: Image.asset(animal.faceImage),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnimalScreen(animal: animal)),
                  );
                },
              ),
            ),
          ],
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
          color: myColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
