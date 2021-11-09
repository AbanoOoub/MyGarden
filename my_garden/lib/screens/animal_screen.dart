import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:my_garden/model/mycolors.dart';

import '../model/animal.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({Key? key, required this.animal}) : super(key: key);

  final Animal animal;
  @override
  Widget build(BuildContext context) {
    MyColors mycolors = new MyColors();
    final data = MediaQuery.of(context);
    Orientation orientation = data.orientation;
    bool portrait = false;

    if (orientation.index == Orientation.portrait.index) {
      portrait = true;
    } else {
      portrait = false;
    }

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: MediaQuery.of(context).padding * 2,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: data.size.height / 2,
                padding: EdgeInsets.all(20),
                child: Image.asset(animal.bodyImage),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: mycolors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                height:
                    portrait ? data.size.height * 0.08 : data.size.width * 0.08,
                width:
                    portrait ? data.size.width * 0.7 : data.size.height * 0.7,
                child: TextButton(
                  child: Center(
                    child: Text(
                      animal.name,
                      style: TextStyle(color: mycolors.white, fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    AudioCache player =
                        AudioCache(prefix: 'assets/animal_name_sound/');
                    player.play(animal.animalNameSound);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: data.size.height * 0.2,
                width: data.size.width * 0.2,
                child: FloatingActionButton(
                  backgroundColor: mycolors.primary,
                  onPressed: () {
                    AudioCache player =
                        new AudioCache(prefix: 'assets/animal_sound/');
                    player.play(animal.animalSound);
                  },
                  child: Icon(Icons.play_arrow),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
