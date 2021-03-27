import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBackups extends StatefulWidget {
  @override
  _ChatBackupsState createState() => _ChatBackupsState();
}

class _ChatBackupsState extends State<ChatBackups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Chat backups",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Backups are encrypted with a passphrase and stored on your device.",
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
            ),
            ListTile(
              leading: TextButton(style: TextButton.styleFrom(
                backgroundColor: CupertinoColors.activeBlue
              ),
                onPressed: () {
                BackUpCustomDialog(context,);
                },

                child: Text(
                  "Turn On",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 2,
            ),
            ListTile(
              title: Text("To restore a backup, install a new copy of Nodes,Open the app and tap Restore Backup"),
            ),
          ],
        ),
      ),
    );
  }
}


Future<void> BackUpCustomDialog(context, ) {


  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          content: Container(
            height: 100,
            width: 310,
            child: Column(
              children: [
                Icon(Icons.folder,color: CupertinoColors.activeBlue,size: 60,),
                Text("TO enable backups,choose a folder. Backups will be saved to this location",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),

              ],
            ),
          ),
          actions: [TextButton(onPressed:  () {
            Navigator.of(context).pop(); },child: Text("Cancel",style: TextStyle(color: CupertinoColors.activeBlue),)),
            TextButton(onPressed:  () {},child: Text("Choose Folder",style: TextStyle(color: CupertinoColors.activeBlue),))],
        );
      });
}

