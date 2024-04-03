import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//HOME画面上にて表示されるUserList
class ActiveUserList extends ConsumerWidget {
  const ActiveUserList({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      //文字列 : オンライン　中央寄せ
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),

        //ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー元ソース
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal, // スクロールの向きを水平方向に指定
        //   child: SizedBox(
        //     height: 400,
        //     width: 1000,
        //     //オンラインユーザーを横スクロール対応で表示
        //     child: Text("オンライン"),
        //   ),
        // ),

        SizedBox(
          height: 150,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            // リスト未定義箇所
            itemCount: children.length,
            itemBuilder: (_, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: children[index],

                    // child: children[index],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
