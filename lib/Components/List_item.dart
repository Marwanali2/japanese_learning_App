import 'package:flutter/material.dart';
import 'package:language_learning_app/Models/Item.dart';
import 'package:audioplayers/audioplayers.dart';
class ListItem extends StatelessWidget {
  final Item number;
  final Color color;
  final String pathType;
  const ListItem({Key? key, required this.number, required this.color, required this.pathType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFEf6DB),
            child: Image.asset("${number.image}"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.inName,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                AudioCache player= AudioCache(prefix: 'assets/sounds/$pathType/');
                player.play(number.sound);
              },
              icon: const Icon(Icons.play_arrow),
              color: Colors.white,
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
