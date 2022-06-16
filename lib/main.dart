import 'package:facebookclone/views/feed.dart';
//import 'package:facebookclone/views/homepage.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(FacebookClone());
}

class FacebookClone extends StatelessWidget {
  const FacebookClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(elevation: 0, backgroundColor: Colors.transparent),
      ),
      debugShowCheckedModeBanner: false,
//      home: HomePage(),
      home: Feed(),
    );
  }
}
