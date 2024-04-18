import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../screen/common_widget/selected_user/selected_user.dart';

class FavoriteUserList extends ConsumerWidget {
  FavoriteUserList({Key? key, required this.title, required this.userObject})
      : super(key: key);

  final String title;
  final List<Widget> userObject;

  final List<String> userName = ["ミランダ", "KEN", "Yoshua", "タモリ", "USF"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          // スクロールの向きを水平方向に指定
          //お気に入りユーザーを横スクロール対応で表示
          child: SizedBox(
            height: 160,
            width: 1000,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    // スクロール方向
                    scrollDirection: Axis.horizontal,
                    //リスト長さ
                    itemCount: userObject.length,
                    //ビルド実行
                    itemBuilder: (_, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              //TODO 各UserPageへ遷移
                              onTap: () {
                                //  UserMyPageへ遷移　　MessageScreen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    //メッセージトップ画面(リスト画面)へ遷移
                                    builder: (context) => const SelectedUser(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: userObject[index],
                                ),
                              ),
                            ),
                            Text(userName[index]),
                          ],
                        ),
                      );
                    },
                  ),
                  // TODO ModelからAPI経由でインスタンスループ,　ListView.builder　へ変更
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
