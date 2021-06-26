import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class OwnMessageCard extends StatelessWidget {
  const OwnMessageCard({Key key, this.message, }) : super(key: key);
  final String message;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Bubble(
        radius: Radius.circular(12),
        margin: BubbleEdges.only(top: 10),
        alignment: Alignment.topRight,


        color:  Colors.blue.shade800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message, textAlign: TextAlign.right,style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.w500,letterSpacing:0.5,
              color: CupertinoColors.tertiarySystemGroupedBackground,
            ),),
            SizedBox(height: 12,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Now", textAlign: TextAlign.right,style: TextStyle(
                  color: CupertinoColors.tertiarySystemGroupedBackground,
                ),),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.done_all,
                  size: 16,
                  color: CupertinoColors.tertiarySystemGroupedBackground,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}