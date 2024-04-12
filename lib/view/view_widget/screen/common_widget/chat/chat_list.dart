import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//　TODO 未完成チャットリスト画面

class ChatList extends ConsumerStatefulWidget {
  const ChatList({Key? key, required this.userList}) : super(key: key);

  // UserList
  final List<Widget> userList;

  @override
  ChatTopState createState() => ChatTopState();
}

// todo 1　チャット中のUserリスト作成(ListViewViewBuilder{動的リスト})
// todo 2　リスト押下で　chat_room() へ遷移

class ChatTopState extends ConsumerState<ChatList> {
  @override
  Widget build(BuildContext context) {
    var userList;
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
                    itemCount: userList.length,
                    //ビルド実行
                    itemBuilder: (_, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: userList[index],

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
