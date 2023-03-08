import 'package:flutter/material.dart';

import '../Components/List_item.dart';
import '../Models/Item.dart';
class FamilyMembers extends StatelessWidget {
   FamilyMembers({Key? key}) : super(key: key);
  final List<Item> numbers =  [
    Item(
      sound: 'father.wav',
      jpName: 'Chichioya',
      inName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Item(
      sound: 'daughter.wav',
      jpName: 'Musume',
      inName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Item(
      sound: 'grand father.wav',
      jpName: 'Ojīsan',
      inName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Item(
      sound: 'mother.wav',
      jpName: 'Hahaoya',
      inName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Item(
      sound: 'grand mother.wav',
      jpName: 'Sobo',
      inName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    Item(
      sound: 'older bother.wav',
      jpName: 'Nīsan',
      inName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Item(
      sound: 'older sister.wav',
      jpName: 'Ane',
      inName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Item(
      sound: 'son.wav',
      jpName: 'Musuko',
      inName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Item(
      sound: 'younger brohter.wav',
      jpName: 'otōto',
      inName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Item(
      sound: 'younger sister.wav',
      jpName: 'Imōto',
      inName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
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
          return ListItem(
            number: numbers[index],
            color: const Color(0xff558937),
            pathType: 'family_members',
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
