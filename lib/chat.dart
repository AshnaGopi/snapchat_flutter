import 'package:flutter/material.dart';
import 'package:snapchat_flutter/images.dart';

class Chat extends StatelessWidget {
  final String name;
  final String status;
  final String time;
  final String streak;
  final IconData icon;
  final IconData iconstatus;
  final Color color;
  final Color col;
  final String img;

  Chat({
    @required this.name,
    @required this.status,
    @required this.time,
    @required this.streak,
    @required this.icon,
    @required this.iconstatus,
    @required this.color,
    @required this.img,
    this.col,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: ClipOval(
          child: Image.asset(
            img,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Row(
        children: [
          IconButton(
            icon: Icon(
              iconstatus,
              color: color,
              size: 30,
            ),
            onPressed: null,
          ),
          Text(
            status,
            style: TextStyle(color: col, fontSize: 15),
          ),
          SizedBox(
            child: Text(
              "   .   ",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            width: 20,
          ),
          Text(
            time,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            child: Text(
              "   .   ",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            width: 20,
          ),
          Text(
            streak,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          icon,
          color: Colors.grey,
        ),
        onPressed: () {
          print("camera");
        },
      ),
    );
  }
}
