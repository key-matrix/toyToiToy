import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:settings_ui/settings_ui.dart';import '../../../common_widget/parts/app_bar.dart';import '../../../common_widget/parts/drawer.dart';import 'inventory/inventory_list_top.dart'; //設定画面Topclass SettingTop extends ConsumerWidget {  const SettingTop({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    return Scaffold(      appBar: const PreferredSize(        preferredSize: Size.fromHeight(            50), //当日、前日売上amount表示   todo 要件確認  animation(右から流れる表示)        child: SettingsAppbar("設定画面"),      ),      endDrawer: const CommonDrawer(),      body: SettingsList(        sections: [          SettingsSection(            title: const Text('Settings'),            tiles: <SettingsTile>[              SettingsTile(                title: const Text('Inventory List'),                value: const Text('在庫管理対象'),                leading: const Icon(                  Icons.playlist_add,                ),                onPressed: (context) {                  Navigator.of(context).push(                    MaterialPageRoute(                      builder: (_) => const InventoryListTop(),                    ),                  );                },              ),              SettingsTile.switchTile(                onToggle: (value) {                  //トグルでon off Long Tapで通知数設定                },                initialValue: true,                leading: const Icon(                  Icons.notifications_active_outlined,                ),                title: const Text('Notification'),              ),              SettingsTile(                title: const Text('add notices'),                value: const Text('周知設定'),                leading: const Icon(                  Icons.campaign,                ),                onPressed: (context) {                  Navigator.of(context).push(                    MaterialPageRoute(                      builder: (_) => const InventoryListTop(),                    ),                  );                },              ),            ],          ),        ],      ),    );  }}