import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import '../../../../../../providers.dart';import '../../../../parts/app_bar.dart';import '../../../../parts/drawer.dart';/// 在庫管理リストclass InventoryListTop extends ConsumerWidget {  const InventoryListTop({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    //管理対象リスト todo Podから取得(DBから取得し初期化)    return Scaffold(      appBar: const PreferredSize(        preferredSize: Size.fromHeight(50),        //当日、前日売上amount表示   todo 要件確認  animation(右から流れる表示)        child: CommonStaticAppbar("管理リスト画面"),      ),      endDrawer: const CommonDrawer(),      body: ListView.builder(        itemCount: ref.read(inventoryManageListProvider).length,        itemBuilder: (context, index) {          return Text(ref.read(inventoryManageListProvider)[index]);        },      ),    );  }}