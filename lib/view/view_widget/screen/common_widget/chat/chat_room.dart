import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../parts/app_bar.dart';

///チャットルーム画面
class ChatRoom extends ConsumerStatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  ChatRoomState createState() => ChatRoomState();
}

class ChatRoomState extends ConsumerState<ChatRoom> {
  final List<types.Message> _messages = [];

  // -------------------------------------------------------------------------------User定義

  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
    firstName: "",
    lastName: "Marie",
    imageUrl:
        "https://github.com/key-matrix/toyToiToy/blob/UI-mock-phase01/assets/imgs/profile_icon_round.png?raw=true",
  );

  final _other = const types.User(
    id: '72091065-a484-4a89-ae75-a22bf8d6f3ac',
    firstName: "金",
    lastName: "正恩",
    imageUrl:
        "https://github.com/key-matrix/toyToiToy/blob/UI-mock-phase01/assets/imgs/user_icons/onlineUser05.jpeg?raw=true",
  );

  @override
  void initState() {
    // -------------------------------------------------------------------------------MSGInit
    //TODO　会話履歴をDBから取得
    super.initState();
    _addMessage(
      types.TextMessage(
        author: _other,
        createdAt: DateTime.now()
            .add(const Duration(hours: 26, minutes: 17) * -1)
            .millisecondsSinceEpoch,
        id: randomString(),
        text: "お話できますか？",
      ),
    );
    _addMessage(
      types.TextMessage(
        author: _user,
        createdAt: DateTime.now()
            .add(const Duration(hours: 2) * -1)
            .millisecondsSinceEpoch,
        id: randomString(),
        text: "なんでしょうか？",
      ),
    );

    _addMessage(
      types.TextMessage(
        author: _other,
        createdAt: DateTime.now()
            .add(const Duration(minutes: 2) * -1)
            .millisecondsSinceEpoch,
        id: randomString(),
        text: "会って話しましょう",
      ),
    );

    _addMessage(
      types.TextMessage(
        author: _other,
        createdAt: DateTime.now()
            .add(const Duration(minutes: 2) * -1)
            .millisecondsSinceEpoch,
        id: randomString(),
        text: "迎えに行きます。",
      ),
    );
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepOrangeAccent,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: CommonStaticAppbar("チャットルーム"),
          ),

          // endDrawer: const CommonDrawer(),
          body: SafeArea(
              child: Chat(
            //User
            user: _user,
            //MSG本文
            messages: _messages,
            //押下時挙動
            onSendPressed: _handleSendPressed,
            // アバター
            showUserAvatars: true,
            //送信者名
            showUserNames: true,
            // 追加
            theme: const DefaultChatTheme(
              primaryColor: Colors.blueGrey, // メッセージの背景色の変更
              userAvatarNameColors: [Colors.black], // ユーザー名の文字色の変更
            ),
          )),
        ),
      );

  //Msg送信時実行処理(画面状態更新)
  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

//送信時処理
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }
}

///ランダム文字列取得(メッセージIDとして使用)
String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}
