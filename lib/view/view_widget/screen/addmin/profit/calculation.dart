import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:flutter/material.dart';///BottomNavi-損益確認画面// class ProfitScreen extends StatelessWidget {//   const ProfitScreen({Key? key}) : super(key: key);////   @override//   Widget build(BuildContext context) {//     return Scaffold(//       body://           const Center(child: Text('収支確認画面', style: TextStyle(fontSize: 32.0))),//     );//   }// }///損益計算画面  (直近1ヶ月)// 1 B/S-線グラフ（客数と人件費の対比）2 丸グラフ（上端: 利益、下端 : コスト）class ProfitScreen extends ConsumerWidget {  const ProfitScreen({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    return const Scaffold(      body:          //  １ヶ月の収益 todo 利益　　：　売上高          //  １ヶ月のコスト todo ： 人件費、水道、光熱費、etc          //  １ヶ月の他コスト  todo   項目タップで詳細確認画面か modal表示          Center(child: Text('収支確認画面', style: TextStyle(fontSize: 32.0))),    );  }}