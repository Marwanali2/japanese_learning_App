import 'package:flutter/material.dart';

import '../Components/List_item.dart';
import '../Models/Item.dart';

class NumbersPage extends StatelessWidget {
   NumbersPage({Key? key}) : super(key: key);
  final List<Item> numbers =  [
    Item(
        sound: 'number_one_sound.mp3',
        image: "assets/images/numbers/number_one.png",
        jpName: 'ichi',
        inName: 'one'),
    Item(
        sound: 'number_two_sound.mp3',
        image: "assets/images/numbers/number_two.png",
        jpName: 'Ni',
        inName: 'two'),
    Item(
        sound: 'number_three_sound.mp3',
        image: "assets/images/numbers/number_three.png",
        jpName: 'San',
        inName: 'three'),
    Item(
        sound: 'number_four_sound.mp3',
        image: "assets/images/numbers/number_four.png",
        jpName: 'shi',
        inName: 'four'),
    Item(
        sound: 'number_five_sound.mp3',
        image: "assets/images/numbers/number_five.png",
        jpName: 'Go',
        inName: 'five'),
    Item(
        sound: 'number_six_sound.mp3',
        image: "assets/images/numbers/number_six.png",
        jpName: 'Roku',
        inName: 'six'),
    Item(
        sound: 'number_seven_sound.mp3',
        image: "assets/images/numbers/number_seven.png",
        jpName: 'Sebun',
        inName: 'seven'),
    Item(
        sound: 'number_eight_sound.mp3',
        image: "assets/images/numbers/number_eight.png",
        jpName: 'hachi',
        inName: 'eight'),
    Item(
        sound: 'number_nine_sound.mp3',
        image: "assets/images/numbers/number_nine.png",
        jpName: 'Kyu',
        inName: 'nine'),
    Item(
        sound: 'number_ten_sound.mp3',
        image: "assets/images/numbers/number_ten.png",
        jpName: 'Ju',
        inName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Numbers'),
          backgroundColor: Theme.of(context).primaryColor),
      // الlist view بتسمحلي اعمل اسكرول بدل ما اروح استخد السينجل شايلد اسكرول فيو
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: const Color(0xffEF9235),
            pathType: 'numbers',
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
