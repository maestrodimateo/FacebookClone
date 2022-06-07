import 'package:facebookclone/views/homepage.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(FacebookClone());
}

class FacebookClone extends StatelessWidget {
  const FacebookClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
