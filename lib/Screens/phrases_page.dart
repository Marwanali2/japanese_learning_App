import 'package:flutter/material.dart';

import '../Components/List_item.dart';
import '../Components/phrase_item.dart';
import '../Models/Item.dart';
class PhrasesPage extends StatelessWidget {
   PhrasesPage({Key? key}) : super(key: key);
  final List<Item> numbers = [
    Item(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      inName: 'dont forget to subscribe',
    ),
    Item(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      inName: 'i love  programming',
    ),
    Item(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      inName: 'programming is easy',
    ),
    Item(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      inName: 'where are you going',
    ),
    Item(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      inName: 'what is your name ?',
    ),
    Item(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      inName: 'i love anime',
    ),
    Item(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      inName: 'how are you feeling?',
    ),
    Item(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      inName: 'are you coming?',
    ),
    Item(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      inName: 'yes i am coming',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
          title: const Text('Numbers'),
          backgroundColor: Theme.of(context).primaryColor),
      // الlist view بتسمحلي اعمل اسكرول بدل ما اروح استخد السينجل شايلد اسكرول فيو
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PhraseItem(
            number: numbers[index],
            color: const Color(0xff50AdC7),
            pathType: 'phrases',
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
