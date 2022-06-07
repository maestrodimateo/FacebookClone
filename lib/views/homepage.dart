import 'package:facebookclone/widgets/Story.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double _icons_size = 20;
  static const Color facebookBlue = Color(0xFF395A9A);
  static const Color facebookGrey = Color(0xFF9A9A9A);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black87,
        ),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              labelStyle:
                  TextStyle(color: facebookGrey, fontWeight: FontWeight.bold),
              labelText: 'Search',
              fillColor: Color(0xFFF2F2F6),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 225, 228), width: 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  )),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image(
              width: 40,
              image: AssetImage('assets/icons/messenger.png'),
              semanticLabel: 'messenger logo',
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  children: [
                    Text(
                      'See active',
                      style: TextStyle(),
                    ),
                    Icon(
                      LucideIcons.chevronRight,
                      size: _icons_size,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundImage:
                              AssetImage('assets/images/profil.jpg'),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.people,
                                      color: Colors.black,
                                      size: 8,
                                    ),
                                    radius: 5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text('Jordan Praise',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(width: 3),
                        Text('updated his cover photo')
                      ],
                    )
                  ],
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            SizedBox(height: 25),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 30,
                      spreadRadius: -80,
                      offset: Offset(0, 100)),
                ],
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/mountains.jpg')),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 10,
                      ),
                      radius: 10,
                    ),
                    Positioned(
                      left: 15,
                      child: CircleAvatar(
                        radius: 11.5,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFF44234),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 10,
                          ),
                          radius: 10,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 45,
                      child: Text(
                        '400',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Text(
                  '122 Comments',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Like',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.messenger_outline,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Comment',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          LucideIcons.plus,
          size: 35,
        ),
        backgroundColor: facebookBlue,
        onPressed: () => {},
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          selectedItemColor: facebookBlue,
          unselectedItemColor: facebookGrey,
          iconSize: _icons_size,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.layout),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  LucideIcons.users,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  LucideIcons.youtube,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  LucideIcons.bell,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profil.jpg'),
                  radius: 15,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
