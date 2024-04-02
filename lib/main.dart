import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rbm_app/providers.dart';
import 'package:rbm_app/view/view_widget/screen/login/login_top.dart';

void main() {
  runApp(
    //監視対象
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //プロバイダ参照
      title: ref.watch(appNameProvider),
      //ダークテーマ
      theme: ThemeData.dark(
          // primarySwatch: Colors.teal,
          ),
      //ルート画面
      home: const LoginTop(), //  AppTop()から変更
    );
  }
}
