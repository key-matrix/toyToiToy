import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../providers.dart';
import 'Message.dart';
import 'message_item.dart';

class MessageList extends ConsumerWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch<List<Message>>(
        messageProvider as ProviderListenable<List<Message>>);
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return MessageItem(message: message);
      },
    );
  }
}
