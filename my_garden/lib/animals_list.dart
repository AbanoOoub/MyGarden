import 'package:flutter/material.dart';

import 'model/animal.dart';
import 'widgets/animal_card.dart';

List<Widget> animals = [
  AnimalCard(
      animal: new Animal('Lion', 'images/face/lion_face.png',
          'images/body/lion.png', 'lion_sound.mp3', 'lion_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Horse', 'images/face/horse_face.png',
          'images/body/horse.png', 'horse_sound.mp3', 'horse_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Turkey',
          'images/face/turkey_face.png',
          'images/body/turkey.png',
          'turkey_sound.mp3',
          'turkey_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Pig', 'images/face/pig_face.png',
          'images/body/pig.png', 'pig_sound.mp3', 'pig_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Elephant',
          'images/face/elephant_face.png',
          'images/body/elephant.png',
          'elephant_sound.mp3',
          'elephant_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Gorilla',
          'images/face/gorilla_face.png',
          'images/body/gorilla.png',
          'gorilla_sound.mp3',
          'gorilla_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Wolf', 'images/face/wolf_face.png',
          'images/body/wolf.png', 'wolf_sound.mp3', 'wolf_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Sheep', 'images/face/sheep_face.png',
          'images/body/sheep.png', 'sheep_sound.mp3', 'sheep_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Ostrich',
          'images/face/ostrich_face.png',
          'images/body/ostrich.png',
          'ostrich_sound.mp3',
          'ostrich_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Mouse', 'images/face/mouse_face.png',
          'images/body/mouse.png', 'mouse_sound.mp3', 'mouse_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Hippopotamus',
          'images/face/hippopotamus_face.png',
          'images/body/hippopotamus.png',
          'hippopotamus_sound.mp3',
          'hippopotamus_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Eagle', 'images/face/eagle_face.png',
          'images/body/eagle.png', 'eagle_sound.mp3', 'eagle_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Donkey',
          'images/face/donkey_face.png',
          'images/body/donkey.png',
          'donkey_sound.mp3',
          'donkey_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Rooster',
          'images/face/rooster_face.png',
          'images/body/rooster.png',
          'rooster_sound.mp3',
          'rooster_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Cheetah',
          'images/face/cheetah_face.png',
          'images/body/cheetah.png',
          'cheetah_sound.mp3',
          'cheetah_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Cow', 'images/face/cow_face.png',
          'images/body/cow.png', 'cow_sound.mp3', 'cow_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Duck', 'images/face/duck_face.png',
          'images/body/duck.png', 'duck_sound.mp3', 'duck_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Frog', 'images/face/frog_face.png',
          'images/body/frog.png', 'frog_sound.mp3', 'frog_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Fox', 'images/face/fox_face.png',
          'images/body/fox.png', 'fox_sound.mp3', 'fox_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Cat', 'images/face/cat_face.png',
          'images/body/cat.png', 'cat_sound.mp3', 'cat_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Camel', 'images/face/camel_face.png',
          'images/body/camel.png', 'camel_sound.mp3', 'camel_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Bee', 'images/face/bee_face.png',
          'images/body/bee.png', 'bee_sound.mp3', 'bee_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Bat', 'images/face/bat_face.png',
          'images/body/bat.png', 'bat_sound.mp3', 'bat_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Cockroach',
          'images/face/cockroach_face.png',
          'images/body/cockroach.png',
          'cockroach_sound.mp3',
          'cockroach_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Tiger', 'images/face/tiger_face.png',
          'images/body/tiger.png', 'tiger_sound.mp3', 'tiger_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Rhino', 'images/face/rhino_face.png',
          'images/body/rhino.png', 'rhino_sound.mp3', 'rhino_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Owl', 'images/face/owl_face.png',
          'images/body/owl.png', 'owl_sound.mp3', 'owl_name_sound.mp3')),
  AnimalCard(
      animal: new Animal(
          'Monkey',
          'images/face/monkey_face.png',
          'images/body/monkey.png',
          'monkey_sound.mp3',
          'monkey_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Bird', 'images/face/bird_face.png',
          'images/body/bird.png', 'bird_sound.mp3', 'bird_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Bear', 'images/face/bear_face.png',
          'images/body/bear.png', 'bear_sound.mp3', 'bear_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Dog', 'images/face/dog_face.png',
          'images/body/dog.png', 'dog_sound.mp3', 'dog_name_sound.mp3')),
  AnimalCard(
      animal: new Animal('Deer', 'images/face/deer_face.png',
          'images/body/deer.png', 'deer_sound.mp3', 'dear_name_sound.mp3')),
];
