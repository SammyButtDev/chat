import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Help",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact us",
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: "Tell us what's going on",
                  hintStyle: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
                  fillColor: Colors.grey.shade400,
                  filled: true,
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: ischeck,
                    onChanged: (value) {
                      setState(() {
                        ischeck = value;
                      });
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "include debug log.",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03 ,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "What's this?",
                        style: TextStyle(
                            color: Colors.blue.shade700),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
