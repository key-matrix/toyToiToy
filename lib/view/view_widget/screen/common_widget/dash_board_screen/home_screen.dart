import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../view_functions.dart';

import '../../../parts/drawer.dart';
import '../../../parts/list/active_user_list.dart';
import '../../../parts/list/favorite_user_list.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        endDrawer: const CommonDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 154,
                height: 30,
                child: Image.asset('assets/imgs/appLogo.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 30, bottom: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.face_unlock_outlined,
                            color: Colors.orangeAccent),
                        Text(
                          "会話人数",
                          style: TextStyle(
                            color: Colors.orangeAccent,
                          ),
                        ),
                        Text(
                          "5人",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Column(
                        children: [
                          Icon(Icons.groups_outlined, color: Colors.cyan),
                          Text(
                            "グループセッション",
                            style: TextStyle(
                              color: Colors.cyan,
                            ),
                          ),
                          Text(
                            "16",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Column(
                        children: [
                          Icon(Icons.payments_outlined, color: Colors.red),
                          Text("お支払い額"),
                          Text(
                            "4,650 円",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //お気に入りUserList
              FavoriteUserList(
                title: 'お気に入り',
                userObject: favoriteUsers,
              ),
              //オンラインUserList
              ActiveUserList(
                title: 'オンライン',
                userObject: onlineUsers,
              ),
            ],
          ),
        ));
  }
}
