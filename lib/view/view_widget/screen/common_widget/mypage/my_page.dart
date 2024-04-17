import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marie_app/view/view_widget/screen/common_widget/settings/setting_top.dart';
import 'package:marie_app/view/view_widget/screen/login/login_top.dart';

import '../../../../../providers.dart';
import '../../../parts/modal.dart';
import '../../app_top.dart';

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
                        // お気に入り画面へ遷移
                        Modal.commonCloseModal(
                          context,
                          "お気に入り",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),
                    // 履歴
                    ListTile(
                      title: const Text('取引履歴'),
                      onTap: () {
                        // 履歴画面へ遷移
                        Modal.commonCloseModal(
                          context,
                          "取引履歴",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('売り上げ確認'),
                      onTap: () {
                        Modal.commonCloseModal(
                          context,
                          "売り上げ確認",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('振り込み申請'),
                      onTap: () {
                        Modal.commonCloseModal(
                          context,
                          "振り込み申請",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('興味ありUser'),
                      onTap: () {
                        Modal.commonCloseModal(
                          context,
                          "興味ありUser",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('利用ガイド'),
                      onTap: () {
                        Modal.commonCloseModal(
                          context,
                          "利用ガイド",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('問い合わせ'),
                      onTap: () {
                        Modal.commonCloseModal(
                          context,
                          "問い合わせ",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('意見書'),
                      onTap: () {
                        Modal.commonCloseModal(
                          context,
                          "意見書",
                          "画面未実装です。",
                          ref,
                          // exeAction(context, ref),
                          // cxlAction(context, ref),
                        );
                      },
                    ),

                    // 設定
                    ListTile(
                      title: const Text('設定'),
                      onTap: () {
                        // 設定画面へ遷移
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // todo プロフィール画面へ遷移
                            builder: (context) => const SettingTop(),
                          ),
                        );
                      },
                    ),
                    // ログアウト
                    ListTile(
                      title: const Text('ログアウト'),
                      onTap: () {
                        // ログアウト処理
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // todo プロフィール画面へ遷移
                            builder: (context) => const LoginTop(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('退会'),
                      onTap: () {
                        Modal.commonModal(
                          context,
                          "警告",
                          "退会すると全ての情報が失われます",
                          ref,
                          (p0, p1) => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginTop(),
                            ),
                          ),
                          (p0, p1) => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppTop(),
                            ),
                          ),
                        );
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
