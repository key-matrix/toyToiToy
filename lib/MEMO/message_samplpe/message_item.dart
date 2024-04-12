import 'package:flutter/material.dart';

import 'Message.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key, required this.message}) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(message.sender[0]),
      ),
      title: Text(message.sender),
      subtitle: Text(message.text),
      trailing: Text(message.timestamp.toString()),
    );
  }
}
