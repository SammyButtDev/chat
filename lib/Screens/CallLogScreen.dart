/*class CallLog extends StatefulWidget {
  @override
  _CallLogState createState() => _CallLogState();
}

class _CallLogState extends State<CallLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: Theme.of(context).buttonColor,
            onPressed: () {},
            heroTag: "000",
            child: Icon(
              Icons.videocam_rounded,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          FloatingActionButton(
            backgroundColor: Theme.of(context).buttonColor,
            onPressed: () {},
            heroTag: '111',
            child: Icon(
              Icons.call,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        leading: IconButton(
          color: Theme.of(context).buttonColor,
          icon: Icon(Icons.keyboard_backspace_outlined,color: Theme.of(context).buttonColor,),
          onPressed: () => Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (_) => HomeScreen(),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "CALLS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).buttonColor,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message chat = chats[index];
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 28,
                                    backgroundColor: Colors.grey.shade300,
                                    backgroundImage:AssetImage(
                                      chat.sender.imageUrl,
                                    ),

                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        chats[index].sender.name,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .color,
                                        ),
                                      ),
                                      Text(
                                        chats[index].time,
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.videocam,
                                      color: Theme.of(context).buttonColor,
                                    ),
                                    onPressed:  () => Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => VoiceGCall())),),
                                SizedBox(width: 10,),
                                IconButton(
                                    icon: Icon(
                                      Icons.call,
                                      color: Theme.of(context).buttonColor,
                                    ),
                                    onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => VoiceCall())),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: Divider(
                          color: Theme.of(context).dividerColor,
                          thickness: 1,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
