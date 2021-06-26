import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({Key key, this.message, }) : super(key: key);
  final String message;


  @override
  Widget build(BuildContext context) {
    return Bubble(
      radius: Radius.circular(10),
      margin: BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 3,
      nipHeight: 10,
      nip: BubbleNip.rightTop,
      color: CupertinoColors.systemGrey2,
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
    );
  }
}