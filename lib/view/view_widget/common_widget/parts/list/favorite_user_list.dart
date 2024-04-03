import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteUserList extends ConsumerWidget {
  const FavoriteUserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // スクロールの向きを水平方向に指定
      child: SizedBox(
        height: 300,
        width: 1000,
        child:
            //オンラインユーザーを横スクロール対応で表示

            Text("お気に入り"),
      ),
    );
  }
}
