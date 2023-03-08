import 'package:flutter/material.dart';
import 'package:language_learning_app/Screens/colors_page.dart';
import 'package:language_learning_app/Screens/phrases_page.dart';
import 'package:language_learning_app/Screens/numbers_page.dart';

import '../Components/category.dart';
import 'family_members_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEf6DB),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            color: const Color(0xffEF9235),
            text: 'Numbers',
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return NumbersPage();
              },));
            },
          ),
          Category(
            color: const Color(0xff558937),
            text: 'Family Members',
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              },));
            },

          ),
          Category(
            color: const Color(0xff79359F),
            text: 'Colors',
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return ColorsPage();
              },));
            },
          ),
          Category(
            color: const Color(0xff50AdC7),
            text: 'Phrases',
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              },));
            },
          ),
        ],
      ),
    );
  }
}
