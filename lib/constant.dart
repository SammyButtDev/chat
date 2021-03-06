import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String imageUrl;
  final Color color;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.color,
  });
}

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;
  int id;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
    this.id,
  });
}

final User currentUser =
    User(id: greg.id, name: 'Current User', imageUrl: 'images/greg.jpg');

final User greg =
    User(id: 6, name: 'Greg', imageUrl: 'images/greg.jpg', color: Colors.grey);
final User james = User(
    id: 0, name: 'James', imageUrl: 'images/james.jpg', color: Colors.brown);
final User john = User(
    id: 2, name: 'John', imageUrl: 'images/john.jpg', color: Colors.pinkAccent);
final User olivia = User(
    id: 1, name: 'Olivia', imageUrl: 'images/olivia.jpg', color: Colors.yellow);
final User sam =
    User(id: 5, name: 'Sam', imageUrl: 'images/sam.jpg', color: Colors.indigo);
final User sophia = User(
    id: 3, name: 'Sophia', imageUrl: 'images/sophia.jpg', color: Colors.orange);
final User steven = User(
    id: 4, name: 'Steven', imageUrl: 'images/steven.jpg', color: Colors.lime);

List<User> status = [
  sam,
  steven,
  olivia,
  john,
  greg,
];
List<User> groupCall = [sam, greg, sophia, olivia];

List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];

Widget customContainer(BuildContext context, heading1, detail1, ontap) {
  return InkWell(
    splashColor: Colors.blue,
    onTap: ontap,
    child: Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading1,
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              detail1,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
