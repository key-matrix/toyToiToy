import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marie_app/MEMO/message_samplpe/send_message_bar.dart';

import '../../../../../providers.dart';
import 'message_bubble.dart';

class MessageScreen extends ConsumerWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(messageProvider);
    final sendMessage = ref.read(sendMessageProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('メッセージ'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return MessageBubble(
                  //送信者
                  sender: message.sender,
                  //本文テキスト
                  text: message.text,
                  //実行時刻DateTime
                  timestamp: message.timestamp,
                );
              },
            ),
          ),
          SendMessageBar(
            onSendMessage: (sender, text) {
              sendMessage(sender, text);
            },
          ),
        ],
      ),
    );
  }
}
