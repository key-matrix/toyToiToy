import 'package:flutter/cupertino.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:marie_app/view/view_widget/parts/list/image_urls_sample.dart';import '../providers.dart';// TODO クラス分け// 設定した通知リスト取得String getNotices(WidgetRef ref) {  List noticeList = ref.watch(noticeListProvider);  String retString = "";  // セットした値取り出し  for (String notice in noticeList) {    String ele = "・$notice";    retString = "$ele$retString　";  }  return retString;}//管理者権限// setNotices(WidgetRef ref, List<String> noticeList) {//   //インデックス番号//   int i = 0;//   // セットした値取り出し//   for (String notice in noticeList) {//     int index = i + 1;//     String ele = index.toString() + notice; // Dartはダート//   }////   // String ntcValue = noticeList.toString();//   // for (ntcValue.substring("sdf")) {//   ////   // }//   // リストに追加//   ref.read(noticeListProvider.notifier).state = noticeList;// }//画像取得処理(Local,API経由)　画面生成処理List<Widget> get onlineUsers => List.generate(      ImageUrls.onlineUserList.length,      // Image.asset('assets/imgs/appLogo.png'),      (index) => Image.network(        ImageUrls.onlineUserList[index],        fit: BoxFit.cover,      ),    );//画像取得処理(Local,API経由)　画面生成処理List<Widget> get favoriteUsers => List.generate(      ImageUrls.favoriteUserList.length,      // Image.asset('assets/imgs/appLogo.png'),      (index) => Image.network(        ImageUrls.favoriteUserList[index],        fit: BoxFit.cover,      ),    );