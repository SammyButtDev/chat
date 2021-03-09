import 'package:flutter/material.dart';

class CallingCard extends StatelessWidget {
  const CallingCard({
    Key key,
    @required this.name,
}): super (key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle,size: 100,color: Theme.of(context).backgroundColor,),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Theme.of(context).textTheme.bodyText1.color),
          ),
          SizedBox(height: 5,),
          Text(
            "OnGoing Call 00:28",
            style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color,fontSize: 25),
          )
        ],
      ),
    );
  }
}
