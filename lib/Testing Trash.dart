
/*Container(
width: MediaQuery.of(context).size.width,
height: 100,
color: Colors.transparent,
child: Row(
children: [
Icon(Icons.image,
color: Theme.of(context).buttonColor),
SizedBox(
width: 30,
),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Chats',
style: TextStyle(
color: Theme.of(context)
.textTheme
    .bodyText1
    .color,
fontWeight: FontWeight.bold),
),
],
),
],
),
),

Padding(
padding: const EdgeInsets.only(left: 25.0),
child: Container(
height: 200,
width: 400,
child: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Column(
children: [
SizedBox(
height: 65,
width: 65,
child: FloatingActionButton(
heroTag: "callB1",
onPressed: () {},
child: Icon(
Icons.video_call_outlined,
color: Colors.black,
size: 35,
),
backgroundColor: Colors.white70)),
SizedBox(
height: 5,
),
Text(
"Video",
style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
),
],
),
SizedBox(
width: 10,
),
Column(
children: [
SizedBox(
height: 65,
width: 65,
child: FloatingActionButton(
backgroundColor: Colors.white70,
heroTag: "callB2",
onPressed: () {},
child: Icon(
Icons.add,
size: 45,
color: Colors.black,
),
),
),
SizedBox(
height: 5,
),
Text(
"Add to call",
style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
),
],
),
SizedBox(
width: 10,
),
Column(
children: [
SizedBox(
height: 65,
width: 65,
child: FloatingActionButton(
backgroundColor: Colors.white70,
heroTag: "callB3",
onPressed: () {},
child: Icon(
Icons.add_call,
size: 35,
color: Colors.black,
),
),
),
SizedBox(
height: 5,
),
Text(
"Transfer Call",
style: TextStyle(color:Theme.of(context).textTheme.bodyText1.color),
),
],
)
],
),
SizedBox(
height: 25,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Column(
children: [
SizedBox(
height: 65,
width: 65,
child: FloatingActionButton(
heroTag: "callB4",
onPressed: () {},
child: Icon(
Icons.mic_off_outlined,
color: Colors.black,
size: 35,
),
backgroundColor: Colors.white70)),
SizedBox(
height: 5,
),
Text(
"Mute",
style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
),
],
),
SizedBox(
width: 10,
),
Column(
children: [
SizedBox(
height: 65,
width: 65,
child: FloatingActionButton(
backgroundColor: Colors.white70,
heroTag: "callB5",
onPressed: () {},
child: Icon(
Icons.pause,
size: 45,
color: Colors.black,
),
),
),
SizedBox(
height: 5,
),
Text(
"Hold",
style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
),
],
),
SizedBox(
width: 10,
),
Column(
children: [
SizedBox(
height: 65,
width: 65,
child: FloatingActionButton(
backgroundColor: Colors.white70,
heroTag: "callB6",
onPressed: () {},
child: Icon(
Icons.volume_up,
size: 35,
color: Colors.black,
),
),
),
SizedBox(
height: 5,
),
Text(
"Speaker",
style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
),
],
)
],
),
],
),
),
),




SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Divider(thickness: 8,color: Colors.grey.shade300,),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "This person is in your contacts",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Icon(
                    Icons.account_circle_outlined,
                    color: CupertinoColors.activeBlue,
                  ),
                ),
              ),
              Divider(thickness: 8,color: Colors.grey.shade300,),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Disappearing messages",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Text(
                    "Off",
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text("Mute notifications",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color)),
                  trailing: Switch(
                      value: _muteNotif,
                      onChanged: (value) {
                        setState(() {
                          _muteNotif = value;
                        });
                      }),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Custom notification",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Text(
                    "Off",
                    style: TextStyle(color: CupertinoColors.activeBlue),
                  ),
                ),
              ),
              Divider(thickness: 8,color: Colors.grey.shade300,),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                    title: Text(
                      "Shared media",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color),
                    ),
                    trailing: Text(
                      "See all",
                      style: TextStyle(color: CupertinoColors.activeBlue),
                    )),
              ),
              Divider(thickness: 8,color: Colors.grey.shade300,),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Chat color",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Chat wallpaper",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
              Divider(thickness: 8,color: Colors.grey.shade300,),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "No groups in common",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
              Divider(thickness: 8,color: Colors.grey.shade300,),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "View safety number",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
              InkWell(
                  splashColor: CupertinoColors.activeBlue,
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      "Block",
                      style: TextStyle(color: CupertinoColors.systemRed),
                    ),
                  )),

            ],
          ),
        ),
      ),*/
