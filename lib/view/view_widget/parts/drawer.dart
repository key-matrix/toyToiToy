import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:marie_app/view/view_widget/parts/modal.dart';import '../screen/app_top.dart';import '../screen/common_widget/chat/chat_top.dart';import '../screen/common_widget/mypage/my_page.dart';import '../screen/common_widget/settings/setting_top.dart';import '../screen/login/login_top.dart';/// 共通Drawerclass CommonDrawer extends ConsumerWidget {  const CommonDrawer({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    return SizedBox(      width: 230,      child: Drawer(        child: ListView(          children: <Widget>[            SizedBox(              height: 210.0,              child: DrawerHeader(                decoration: const BoxDecoration(                  color: Colors.indigo,                ),                child: FittedBox(                  child: Center(                    child: Column(                      children: <Widget>[                        GestureDetector(                          onTap: () {                            Navigator.push(                              context,                              MaterialPageRoute(                                // todo プロフィール画面へ遷移                                builder: (context) => const MyPage(),                              ),                            );                          },                          child:                              Image.asset('assets/imgs/profile_icon_round.png'),                        ),                        const Text(                          'Marie',                          style: TextStyle(fontSize: 110),                        ),                      ],                    ),                  ),                ),              ),            ),            //---------リスト実態            const ListTile(              title: Text("tutorial"),              subtitle: Text("このアプリについて"),              leading: Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.account_balance_outlined,                ),              ),            ),            ListTile(              title: const Text("Message"),              subtitle: const Text("メッセージ"),              leading: const Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.mail_outline,                ),              ),              onTap: () {                //  メッセージ画面へ遷移　　MessageScreen                Navigator.push(                  context,                  MaterialPageRoute(                    //メッセージトップ画面(リスト画面)へ遷移                    builder: (context) => const ChatTop(),                  ),                );              },            ),            const Divider(              height: 0,              endIndent: 0,              color: Colors.white70,            ),            ListTile(              title: const Text("settings"),              subtitle: const Text("設定"),              leading: const Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.settings,                ),              ),              onTap: () {                Navigator.push(                  context,                  MaterialPageRoute(                    builder: (context) => const SettingTop(),                  ),                );              },            ),            //ログアウト            ListTile(              title: const Text("log out"),              subtitle: const Text("ログアウト"),              leading: const Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.transit_enterexit_outlined,                ),              ),              onTap: () {                //User情報初期化                ref.read(userNameProvider.notifier).state = "";                //todo 情報初期化 API                //ログイン画面へ遷移                Navigator.push(                  context,                  MaterialPageRoute(                    builder: (context) => const LoginTop(),                  ),                );              },            ),            const Divider(              height: 0,              endIndent: 0,              color: Colors.white70,            ),            ListTile(              title: const Text("Withdrawal"),              subtitle: const Text("退会"),              leading: const Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.outlet,                ),              ),              onTap: () {                //モーダル                Modal.commonModal(                  context,                  "警告",                  "退会すると全ての情報が失われます",                  ref,                  (p0, p1) => Navigator.push(                    context,                    MaterialPageRoute(                      builder: (context) => const LoginTop(),                    ),                  ),                  (p0, p1) => Navigator.push(                    context,                    MaterialPageRoute(                      builder: (context) => const AppTop(),                    ),                  ),                );                // Modal.commonModal(context, "警告", "退会すると全ての情報が失われます", ref);              },            ),          ],        ),      ),    );  }}