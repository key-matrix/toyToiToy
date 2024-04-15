import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//　TODO メッセージリスト画面「メッセージ中のリスト取得(名前,アイコン,最後のメッセージ)」

class ChatList extends ConsumerStatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  ChatTopState createState() => ChatTopState();
}
// todo 1　チャット中のUserリスト作成(ListViewViewBuilder{動的リスト})
// todo 2　リスト押下で　chat_room() へ遷移

class ChatTopState extends ConsumerState<ChatList> {
  final List<Widget> chatList = [];

  @override
  Widget build(BuildContext context) {
    // var chatList = this.chatList;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SizedBox(
            child: Column(
              children: [
                const SizedBox(height: 3),
                const Divider(
                  height: 0,
                  endIndent: 0,
                  color: Colors.white70,
                ),
                const Text("メッセージトップ"),
                //　TODO　ListBuilder　チャット中のUserリスト表示へ変更
                SingleChildScrollView(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    // スクロール方向
                    scrollDirection: Axis.horizontal,
                    //リスト長さ
                    itemCount: chatList.length,
                    //ビルド実行
                    itemBuilder: (_, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: chatList[index],

                            // child: children[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
