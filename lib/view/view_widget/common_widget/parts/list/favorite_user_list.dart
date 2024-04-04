import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteUserList extends ConsumerWidget {
  const FavoriteUserList(
      {Key? key, required this.title, required this.userObject})
      : super(key: key);

  final String title;
  final List<Widget> userObject;

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
          scrollDirection: Axis.horizontal, // スクロールの向きを水平方向に指定
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: userObject[index],

                            // child: children[index],
                          ),
                        ),
                      );
                    },
                  ),
                  // TODO ModelからAPI経由でインスタンスループ,　ListView.builder　へ変更
                  //  　お気に入りユーザーを横スクロール対応で表示
                  // child: ListView(
                  //   children: const <Widget>[
                  //     //-------------------------------------------------User1
                  //     ListTile(
                  //       leading: CircleAvatar(
                  //         backgroundImage:
                  //             AssetImage('assets/imgs/user_icon.png'),
                  //         radius: 40,
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.only(left: 22),
                  //       child: Text(
                  //         "Jane Doe",
                  //         style: TextStyle(
                  //           fontSize: 15,
                  //           color: Colors.pinkAccent,
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     //-------------------------------------------------User2
                  //     ListTile(
                  //       leading: CircleAvatar(
                  //         backgroundImage:
                  //             AssetImage('assets/imgs/user_icon.png'),
                  //         radius: 40,
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.only(left: 22),
                  //       child: Text(
                  //         "Jane Doe",
                  //         style: TextStyle(
                  //           fontSize: 15,
                  //           color: Colors.pinkAccent,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
