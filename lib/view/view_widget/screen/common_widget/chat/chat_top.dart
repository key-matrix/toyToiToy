import 'package:flutter/material.dart';

import '../../../../view_functions.dart';
import '../../../parts/list/favorite_user_list.dart';

//　TODO 未完成チャットリスト画面
class ChatTop extends StatelessWidget {
  const ChatTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: 1540,
              height: 3000,
            ),
            FavoriteUserList(
              title: 'お気に入り',
              userObject: favoriteUsers,
            ),
          ],
        ),
      ),
    );
  }
}
