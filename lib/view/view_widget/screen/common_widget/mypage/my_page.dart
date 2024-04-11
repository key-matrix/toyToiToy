import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../providers.dart';

class MyPage extends ConsumerWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = ref.watch(loginUserProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 3),

              Padding(
                padding: const EdgeInsets.only(left: 40.0, bottom: 10),
                child: Row(
                  children: [
                    // プロフィール画像
                    const CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.deepPurpleAccent,
                      backgroundImage:
                          AssetImage('assets/imgs/profile_icon_round.png'),
                      // backgroundImage: Image.asset('assets/imgs/profile_icon_round.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Column(
                        children: [
                          // ユーザー名
                          Text(
                            userName["name"]!,
                            style: const TextStyle(fontSize: 20.0),
                          ),
                          // メールアドレス
                          Text(
                            userName["email"]!,
                            style: const TextStyle(fontSize: 11.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0,
                endIndent: 0,
                color: Colors.white70,
              ),

              // todo 出品,募集　Btn

              Expanded(
                child: ListView(
                  children: [
                    // メニューリスト

                    ListTile(
                      title: const Text('お気に入り'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),
                    // 履歴
                    ListTile(
                      title: const Text('取引履歴'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),
                    ListTile(
                      title: const Text('売り上げ確認'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),
                    ListTile(
                      title: const Text('振り込み申請'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),
                    ListTile(
                      title: const Text('興味ありUser'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),
                    ListTile(
                      title: const Text('利用ガイド'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),
                    ListTile(
                      title: const Text('問い合わせ'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),
                    ListTile(
                      title: const Text('意見書'),
                      onTap: () {
                        // 履歴画面へ遷移
                      },
                    ),

                    // 設定
                    ListTile(
                      title: const Text('設定'),
                      onTap: () {
                        // 設定画面へ遷移
                      },
                    ),
                    // ログアウト
                    ListTile(
                      title: const Text('ログアウト'),
                      onTap: () {
                        // ログアウト処理
                      },
                    ),
                    ListTile(
                      title: const Text('退会'),
                      onTap: () {
                        // ログアウト処理
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
