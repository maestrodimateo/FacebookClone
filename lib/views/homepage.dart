import 'package:facebookclone/widgets/Post.dart';
import 'package:facebookclone/widgets/Story.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                hintText: 'Search',
                hintStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                labelStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.grey.shade100,
                prefixIcon: Icon(Icons.search),
                focusColor: Colors.grey,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.shade400, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.shade400, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                )),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.blue,
                  blurRadius: 25,
                  offset: Offset(-5, 0),
                  spreadRadius: -18),
            ]),
            padding: const EdgeInsets.only(right: 20),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Image(
                  image: AssetImage('assets/icons/messenger.png'),
                  width: 30,
                ),
                Positioned(
                  left: 18,
                  top: 12,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 3,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),

      //body
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Stories',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade700),
                    ),
                    Row(
                      children: [
                        Text(
                          'See Archive',
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
                        ),
                        Icon(
                          LucideIcons.chevronRight,
                          size: 16,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Stories
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                ],
              ),
            ),

            //update info
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage('assets/images/profil.jpg')),
                          Positioned(
                            bottom: 0,
                            left: 18,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 7,
                              child: Icon(
                                Icons.people,
                                size: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(
                                    text: 'Jordan Praise',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  TextSpan(text: '  updated his cover photo'),
                                ])),
                            SizedBox(
                              height: 2,
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Post(),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.thumb_up_alt,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  bottom: -2,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 14,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.red,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),
                            Text('400')
                          ],
                        ),
                        Text('122 Comments')
                      ],
                    ),
                  ),
                  Container(margin: EdgeInsets.only(top: 15), child: Divider()),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.thumb_up_alt_outlined),
                            SizedBox(width: 10),
                            Text('Like')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(LucideIcons.messageSquare),
                            SizedBox(width: 10),
                            Text('Comment')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('assets/images/profil.jpg')),
                      Positioned(
                        bottom: 0,
                        left: 18,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 7,
                          child: Icon(
                            Icons.people,
                            size: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 250,
                    child: Wrap(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Anita Michaels ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'had a Photoshoot session at  '),
                              TextSpan(
                                text: 'Kings Lounge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, height: 1.5),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),

      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
            backgroundColor: Color(0xFF395a9a),
            child: Icon(Icons.add, size: 35),
            onPressed: (() => {})),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF395a9a),
          onTap: ((index) => {print(index)}),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(LucideIcons.layout), label: ''),
            BottomNavigationBarItem(icon: Icon(LucideIcons.users), label: ''),
            BottomNavigationBarItem(icon: Icon(LucideIcons.youtube), label: ''),
            BottomNavigationBarItem(icon: Icon(LucideIcons.bell), label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profil.jpg'),
                    radius: 15),
                label: '')
          ]),
    );
  }
}

