import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import '../../../../../model/repository/calculate.dart';import '../../../parts/drawer.dart';import '../../../parts/graphs/bar_graph.dart';import 'elements/active_memberTxt.dart';import 'elements/hour_cost.dart';import 'elements/hour_profit.dart';///BottomNavi-ダッシュボード画面class DashBoardScreen extends ConsumerWidget {  const DashBoardScreen({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    Calculate calculate = Calculate();    return Scaffold(      endDrawer: const CommonDrawer(),      body: SingleChildScrollView(        child: Column(          children: [            Text(              "average  ¥${calculate.averageAllDay(ref).toString()}",              style: const TextStyle(                color: Colors.indigo,              ),            ),            const TopPageBarGraph(),            //勤務メンバー（詳細リンク）,スタンバイメンバー            const ActiveMember(),            ////////////////////////////////////////////////////            // todo 現在の客数 押下時（滞在時間、使用金額、注文履歴）            const Padding(              padding: EdgeInsets.only(top: 6.0, left: 30),              child: Row(                children: [                  Column(                    children: [                      Icon(Icons.face_unlock_outlined,                          color: Colors.orangeAccent),                      Text(                        "Customer/Day",                        style: TextStyle(                          color: Colors.orangeAccent,                        ),                      ),                      Text(                        "52",                        style: TextStyle(fontSize: 18),                      ),                    ],                  ),                  //グループ数                  Padding(                    padding: EdgeInsets.only(left: 30.0),                    child: Column(                      children: [                        Icon(Icons.groups_outlined, color: Colors.cyan),                        Text(                          "Groups/Day",                          style: TextStyle(                            color: Colors.cyan,                          ),                        ),                        Text(                          "16",                          style: TextStyle(                            fontSize: 18,                            color: Colors.cyan,                          ),                        ),                      ],                    ),                  ),                  //おでん客                  Padding(                    padding: EdgeInsets.only(left: 30.0),                    child: Column(                      children: [                        Icon(Icons.soup_kitchen_outlined, color: Colors.red),                        Text("おでん/Day"),                        Text(                          "4,650 円",                          style: TextStyle(fontSize: 15),                        ),                      ],                    ),                  ),                ],              ),            ),            //            ////////////////////////////////////////////////////            //  時間コスト表示            const Padding(              padding: EdgeInsets.only(                top: 10.0,              ),              child: Row(                children: [                  HourCostTxt(),                  //  時間収入表示                  HourProfit(),                ],              ),            ),          ],        ),      ),    );  }}