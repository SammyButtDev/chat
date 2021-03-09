import 'package:blah/ChatHolder/ChatPage.dart';
import 'package:blah/Screens/StatusScreen.dart';
import 'package:blah/constant.dart';
import 'package:flutter/material.dart';



class ChatHolder extends StatefulWidget {
  @override
  _ChatHolderState createState() => _ChatHolderState();
}

class _ChatHolderState extends State<ChatHolder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: status.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Status_Screen(),
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey.shade300,
                              backgroundImage: AssetImage(status[index].imageUrl,)
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            status[index].name,
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Chat_page(),
            ],
          ),
        ),
      ),
    );
  }
}
