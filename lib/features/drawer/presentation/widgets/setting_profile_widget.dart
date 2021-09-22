import 'package:flutter/material.dart';

class SettingProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name :', style: textTheme.caption),
                  Text('Ahmed Nasser', style: textTheme.headline4),
                ],
              ),
              Column(
                children: [
                  Text('Gender :', style: textTheme.caption),
                  Text('Male', style: textTheme.headline4),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mobile Number :', style: textTheme.caption),
              Text('+201119193535', style: textTheme.headline4),
            ],
          )
        ],
      ),
    );
  }
}