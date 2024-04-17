import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//HOME画面上にて表示されるUserList
class ActiveUserList extends ConsumerWidget {
  ActiveUserList({
    Key? key,
    required this.title,
    required this.userObject,
  }) : super(key: key);

  final String title;
  final List<Widget> userObject;

  final List<String> userName = ["ピエロ", "Lif", "Kamo", "プーチン", "金 正恩"];

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
        SizedBox(
          height: 160,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            // リスト未定義箇所
            itemCount: userObject.length,
            itemBuilder: (_, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: SizedBox(
                        width: 120,
                        height: 120,
                        child: userObject[index],
                      ),
                    ),
                    Text(userName[index]),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
