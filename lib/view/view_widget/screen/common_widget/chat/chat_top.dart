import 'package:flutter/material.dart';

import '../../../../../model/url/image_urls_sample.dart';
import '../../../parts/app_bar.dart';
import 'chat_room.dart';

// DateTime=  datetime = DateTime.parse(sentDateJst); // StringからDate

// DateTime now = DateTime.now()
//     .add(const Duration(minutes: 2) * -1)
//     .millisecondsSinceEpoch as DateTime;

//　TODO チャットリストTOP画面
class ChatTop extends StatelessWidget {
  const ChatTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
            50), //当日、前日売上amount表示   todo 要件確認  animation(右から流れる表示)
        child: CommonStaticAppbar("Message"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1600,

          /// TODO 無限ERROR発生中
          child: ListView.builder(
            itemCount: 1, // 1行目: 商品の数を指定
            itemBuilder: (context, index) {
              return Card(
                // 2行目: Cardウィジェットを使用
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      ImageUrls.onlineUserList[4],
                    ),
                    radius: 24, // CircleAvatarの半径
                  ),

                  title: const Text("金 正恩"), // 4行目: 商品名
                  subtitle: const Text('迎えに行きます。'), // 5行目: 商品説明
                  // trailing: Text("${DateTime.now()}"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // todo プロフィール画面へ遷移
                        builder: (context) => const ChatRoom(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
