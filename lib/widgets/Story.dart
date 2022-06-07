import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 100,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage('assets/images/profil.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleAvatar(
              radius: 12,
              child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/images/profil.jpg')),
              backgroundColor: Colors.white,
            )
          ]),
          Row(
            children: [
              Text(
                'Noel MEBALE',
                style: TextStyle(color: Colors.white, fontSize: 9),
              )
            ],
          )
        ],
      ),
    );
  }
}
