import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteUserList extends ConsumerWidget {
  const FavoriteUserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Text(
          "お気に入り",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // スクロールの向きを水平方向に指定
          child: SizedBox(
            height: 160,
            width: 1000,
            //お気に入りユーザーを横スクロール対応で表示
            child: Text("お気に入り"),
          ),
        ),
      ],
    );
  }
}
