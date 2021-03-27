import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;

  const SettingListTile({
    Key key,
    @required this.iconData,
    @required this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
      iconData,
        color: Theme.of(context).buttonColor,
      ),
      title: Text(
      title,
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subTitle ?? '',
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
      ),
    );
  }
}
