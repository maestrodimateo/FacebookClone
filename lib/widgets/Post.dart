import 'package:flutter/material.dart';
class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: Offset(0, 70),
            blurRadius: 30,
            spreadRadius: -70,
          )
        ],
        image: DecorationImage(
            image: AssetImage('assets/images/mountains.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
