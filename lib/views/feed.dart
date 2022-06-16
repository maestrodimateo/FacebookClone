import 'package:facebookclone/widgets/Post.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            Text(
              'feed',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
                padding: EdgeInsets.all(20),
                child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/images/profil.jpg'),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 260,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Anita Michaels ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                        text: 'added 13 photos to the album '),
                                    TextSpan(
                                      text: 'Creative photograph',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '33 mins ago',
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RichText(
                text: TextSpan(
                  text:
                      'Suspendissse nec elit vel erat aliquet modestie non vel nunc. Phasellus in porta erat sed sollicutidube uma',
                  style: TextStyle(color: Color.fromARGB(255, 43, 43, 43), height: 1.5),
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(top: 30), child: Post()),
            Container(margin: EdgeInsets.only(top: 30), child: Post()),
            Container(margin: EdgeInsets.only(top: 30), child: Post()),
            Container(margin: EdgeInsets.only(top: 30), child: Post()),
          ],
                ),
              ),
              Align(
            alignment: Alignment.bottomCenter,
            child: Container(color: Colors.black, height: 100,)),
        ],
      ),
    );
  }
}
