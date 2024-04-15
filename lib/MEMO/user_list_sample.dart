import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserList extends ConsumerWidget {
  const UserList(this.listName, {Key? key}) : super(key: key);

  final String listName;

  //アクティブ,お気にユーザリストクラス
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //userList
    final List<String> listItems = [
      'Item 1',
      'Item 2',
      'Item 3',
    ];

    return Row(
      //  リストアイコン表示
      children: [
        ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return Text(listItems[index]);
          },
        ),
      ],
    );
  }
}
