import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../providers.dart';

class MyPage extends ConsumerWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = ref.watch(loginUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Text('マイページ', style: TextStyle()),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // プロフィール画像
          const CircleAvatar(
            radius: 70.0,
            backgroundColor: Colors.deepPurpleAccent,
            // backgroundImage: Image.asset('assets/imgs/profile_icon_round.png'),
          ),
          // ユーザー名
          Text(
            userName["name"]!,
            style: const TextStyle(fontSize: 20.0),
          ),
          // メールアドレス
          Text(
            userName["email"]!,
            style: const TextStyle(fontSize: 16.0),
          ),
          // メニューリスト
          Expanded(
            child: ListView(
              children: [
                // 履歴
                ListTile(
                  title: const Text('履歴'),
                  onTap: () {
                    // 履歴画面へ遷移
                  },
                ),
                // 設定
                ListTile(
                  title: const Text('設定'),
                  onTap: () {
                    // 設定画面へ遷移
                  },
                ),
                // ログアウト
                ListTile(
                  title: const Text('ログアウト'),
                  onTap: () {
                    // ログアウト処理
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class User {
//   final String name;
//   final String email;
//
//   const User(this.name, this.email);
// }
//
// class UserProvider extends ChangeNotifier {
//   User _user = User('ユーザー名', 'email@example.com');
//
//   User get user => _user;
//
//   void setName(String name) {
//     _user = _user.copyWith(name: name);
//     notifyListeners();
//   }
//
//   void setEmail(String email) {
//     _user = _user.copyWith(email: email);
//     notifyListeners();
//   }
// }
