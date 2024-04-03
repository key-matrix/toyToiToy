import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marie_app/view/view_widget/common_widget/parts/list/user_list.dart';

class FavoriteUserList extends ConsumerWidget {
  const FavoriteUserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Map<String, dynamic>> listItems = [
      {
        'text': 'Item 1',
        'color': Colors.blue[600],
      },
      {
        'text': 'Item 2',
        'color': Colors.blue[300],
      },
      {
        'text': 'Item 3',
        'color': Colors.blue[100],
      },
    ];
    return Column(
      children: [
        const Text(
          "お気に入り",
          style: TextStyle(
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
              //お気に入りユーザーを横スクロール対応で表示
              children: [
                Expanded(
                  child: ListView(
                    // scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/imgs/user_icon.png'),
                          radius: 40, // CircleAvatarの半径
                        ),
                      ),
                      ListTile(
                        title: Text('johnDoe 　　Jane Doe123'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
