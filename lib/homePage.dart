//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:snapchat_flutter/chat.dart';
import 'package:snapchat_flutter/images.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Chat",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          leading: Container(
            margin: EdgeInsets.all(2),
            child: Row(
              children: [
                Container(
                  // margin: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      bb,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      print("Dp pressed");
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  print("Search contact");
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
                onPressed: () {
                  print("Drop down pressed");
                },
              ),
            ),
          ],
        ),
        body: new ListView(
          children: [
            Column(
              children: [
                Chat(
                  name: "Aswin",
                  status: "Received",
                  time: "2s",
                  streak: "158",
                  icon: Icons.camera_alt_outlined,
                  iconstatus: Icons.chat_bubble_outline,
                  color: Colors.blue,
                  img: aa,
                ),
                Divider(),
                Chat(
                  name: "Aamy",
                  status: "New snap",
                  time: "1h",
                  streak: "159",
                  icon: Icons.camera_alt_outlined,
                  iconstatus: Icons.stop_rounded,
                  color: Colors.red,
                  img: cc,
                  col: Colors.red,
                ),
                Divider(
                  thickness: 0.5,
                ),
                Chat(
                  name: "Venna",
                  status: "Replayed",
                  time: "5m",
                  streak: "159",
                  icon: Icons.chat_bubble_outline,
                  iconstatus: Icons.replay_10_outlined,
                  color: Colors.red,
                  img: dd,
                  col: Colors.red,
                ),
                Divider(),
                Chat(
                  name: "Neehara",
                  status: "Received",
                  time: "5h",
                  streak: "158",
                  icon: Icons.chat_bubble_outline,
                  iconstatus: Icons.crop_square_outlined,
                  color: Colors.blue,
                  img: ee,
                ),
                Divider(),
                Chat(
                  name: "Anu Tiktok",
                  status: "Opened",
                  time: "34m",
                  streak: "158",
                  icon: Icons.camera_alt_outlined,
                  iconstatus: Icons.play_arrow_outlined,
                  color: Colors.blue,
                  img: ff,
                ),
                Divider(),
                Chat(
                  name: "Anusha Suresh",
                  status: "New snap",
                  time: "2h",
                  streak: "158",
                  icon: Icons.chat_bubble_outline,
                  iconstatus: Icons.stop_rounded,
                  color: Colors.purple[700],
                  img: gg,
                  col: Colors.purple[700],
                ),
                Divider(),
              ],
            )
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                title: Text(''),
                icon: new Icon(
                  Icons.place_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(''),
                icon: new Icon(
                  Icons.chat_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(''),
                icon: new Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(''),
                icon: new Icon(
                  Icons.people_alt_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(''),
                icon: new Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Contacts");
          },
          child: Icon(Icons.messenger_outline_rounded),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
