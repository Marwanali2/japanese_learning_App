import 'package:flutter/material.dart';

import '../Components/List_item.dart';
import '../Models/Item.dart';
class ColorsPage extends StatelessWidget {
   ColorsPage({Key? key}) : super(key: key);
  final List<Item> numbers =  [
    Item(
      sound: 'black.wav',
      jpName: 'Burakku',
      inName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'brown.wav',
      jpName: 'Chairo',
      inName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      sound: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      inName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      sound: 'gray.wav',
      jpName: 'Gurē',
      inName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      sound: 'green.wav',
      jpName: 'Midori',
      inName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      sound: 'red.wav',
      jpName: 'Aka',
      inName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
    Item(
      sound: 'black.wav',
      jpName: 'Kuroi',
      inName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'white.wav',
      jpName: 'Shiroi',
      inName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),

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
            color: const Color(0xff79359F),
            pathType: 'colors',
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
