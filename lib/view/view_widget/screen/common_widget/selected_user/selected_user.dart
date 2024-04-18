import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marie_app/model/user_db.dart';

import '../../../../../model/url/image_urls_sample.dart';
import '../../../../../providers.dart';

///選択User(User詳細画面)
class SelectedUser extends ConsumerWidget {
  const SelectedUser({Key? key}) : super(key: key);

  //ホームから他ユーザをタップした際の画面

  //todo ボトムナビ使用へ変更’(提供資材使用)
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //　TODO　UserName[動的処理へ変更] 　動的化 - 静的モデル実装中

    Users user = Users(
        "岸田 文雄",
        53,
        0,
        1,
        "onlytax_no1@gmail.com",
        "はじめまして,政権トップの岸田です。",
        ["子供向けの人形劇を作りたい", "イベントで人形劇を演じたい", "人形劇のワークショップを開催したい"],
        ["オリジナル脚本の制作", "人形制作", "声当て", "演出"]);

    //性別確定Method
    genderDefine(int gen) {
      if (gen == 0) {
        return "男性";
      } else if (gen == 1) {
        return "女性";
      } else {
        return "その他";
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50.0),
          //　TODO　UserName[動的処理へ変更]
          // child: Text(user.name, style: const TextStyle()),
        ),
      ),
      body: Column(
        children: [
          // const SizedBox(height: 5),
          // プロフィール画像
          const CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.deepPurpleAccent,

            backgroundImage: NetworkImage(
              "https://github.com/key-matrix/toyToiToy/blob/UI-mockMaster/assets/imgs/user_icons/kishidaFumio.jpeg?raw=true",
            ),
            // foregroundImage:
            //     Image.asset("assets/imgs/user_icons/kishidaFumio.jpeg"),
            // backgroundImage: Image.asset('assets/imgs/profile_icon_round.png'),
          ),
          // ユーザー名
          Text(
            user.name,
            style: const TextStyle(fontSize: 20.0),
          ),
          // メールアドレス
          Text(
            user.email,
            style: const TextStyle(fontSize: 16.0),
          ),
          // メニューリスト
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text('自己紹介'),
                  subtitle: Text(user.introduce),
                ),
                // 設定
                ListTile(
                  title: const Text('性別'),
                  subtitle: Text(genderDefine(user.gender)),
                ),

                ListTile(
                  title: Text('好きなこと'),
                  subtitle: Text(user.likes[0]),
                  // for (var i = 1; i <= 4; i++) Text('$i'),
                  //
                ),

                ListTile(
                  title: const Text('操演者'),
                  subtitle: Text(user.service[0]),
                ),

                //  ボタン設置
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(6, 5), //(横、高さ)
                  ),
                  onPressed: () {},
                  child: const Text('お話する'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
