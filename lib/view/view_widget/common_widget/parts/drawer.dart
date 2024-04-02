import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import '../../screen/common_widget/settings/setting_top.dart';import '../../screen/login/login_top.dart';/// 共通Drawerclass CommonDrawer extends ConsumerWidget {  const CommonDrawer({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    return SizedBox(      width: 250,      child: Drawer(        child: ListView(          children: <Widget>[            const SizedBox(              height: 160.0,              child: DrawerHeader(                decoration: BoxDecoration(                  color: Colors.indigo,                  // image:    //                ),                child: Center(                    child: Text(                  '2 notices',                  style: TextStyle(fontSize: 30, color: Colors.amber),                )),              ),            ),            //---------リスト実態            const ListTile(              title: Text("Inventory"),              subtitle: Text("確認、発注"),              leading: Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.inventory,                ),              ),              trailing: Icon(Icons.warning_amber_rounded, color: Colors.amber),            ),            const ListTile(              title: Text("history"),              subtitle: Text("過去情報参照"),              leading: Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.history,                ),              ),            ),            const ListTile(              title: Text("shift schedule"),              subtitle: Text("シフト作成"),              leading: Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.edit_calendar_rounded,                ),              ),              trailing: Icon(Icons.warning_amber_rounded, color: Colors.amber),            ),            const Divider(              height: 0,              endIndent: 0,              color: Colors.white70,            ),            ListTile(              title: const Text("settings"),              subtitle: const Text("設定"),              leading: const Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.settings,                ),              ),              onTap: () {                Navigator.push(                  context,                  MaterialPageRoute(builder: (context) => const SettingTop()),                );              },            ),            //ログアウト            ListTile(              title: const Text("log out"),              subtitle: const Text("ログアウト"),              leading: const Padding(                padding: EdgeInsets.all(8.0),                child: Icon(                  Icons.transit_enterexit_outlined,                ),              ),              onTap: () {                //User情報初期化                ref.read(userNameProvider.notifier).state = "";                //todo 情報初期化 API                //ログイン画面へ遷移                Navigator.push(                  context,                  MaterialPageRoute(builder: (context) => const LoginTop()),                );              },            ),          ],        ),      ),    );  }}