import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum MessageTabBarEnum {
  chat('Chats', CupertinoIcons.text_bubble),
  group('Groups', CupertinoIcons.bubble_left_bubble_right),
  story('Stories', Icons.more_time_sharp);

  const MessageTabBarEnum(this.title, this.icon);
  final String title;
  final IconData icon;
}
