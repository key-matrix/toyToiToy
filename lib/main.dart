import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marie_app/providers.dart';
import 'package:marie_app/view/view_widget/screen/login/login_top.dart';

void main() {
  runApp(
    //riverPod監視対象
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
    debugPrint("App起動");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //プロバイダ参照
      title: ref.watch(appNameProvider),
      //ダークテーマ
      theme: ThemeData(
        fontFamily: "JpFont", //Textの字体や大きさ

        // primarySwatch: Colors.teal,
        // fontFamily: "KleeOne",//Textの字体や大きさ
      ),
      //ルート画面
      home: const LoginTop(), //  AppTop()から変更
    );
  }
}
