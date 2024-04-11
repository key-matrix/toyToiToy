import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SendMessageBar extends HookWidget {
  final void Function(String sender, String text) onSendMessage;

  const SendMessageBar({
    Key? key,
    required this.onSendMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textController,
              onSubmitted: (text) {
                onSendMessage('自分', text);
                textController.clear();
              },
            ),
          ),
          IconButton(
            onPressed: () {
              onSendMessage('自分', textController.text);
              textController.clear();
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
