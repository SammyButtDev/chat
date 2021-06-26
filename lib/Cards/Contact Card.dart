import 'package:blah/constant.dart';
import 'package:flutter/material.dart';
class ContactCard extends StatelessWidget {
  const ContactCard({Key key, this.contact}) : super(key: key);
  final Message contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 53,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blueGrey[200],
            ),
            contact.isLiked
                ? Positioned(
              bottom: 4,
              right: 5,
              child: CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 11,
              ),
            )
                : Container(),
          ],
        ),
      ),
      title: Text(
        contact.sender.name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        contact.text,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}