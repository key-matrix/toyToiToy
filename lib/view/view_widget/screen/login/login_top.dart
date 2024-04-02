import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import '../../../../providers.dart';import '../app_top.dart';///ユーザNamefinal userNameProvider = StateProvider<String>((ref) => "");///appTittleNamefinal userPassProvider = StateProvider<String>((ref) => "");class LoginTop extends ConsumerStatefulWidget {  const LoginTop({Key? key}) : super(key: key);  @override  _LoginTopState createState() => _LoginTopState();}class _LoginTopState extends ConsumerState<LoginTop> {  //パス隠し  bool _isObscure = true;  //userName  final userNameCtl = TextEditingController();  //pass  final passwordCtl = TextEditingController();  @override  Widget build(BuildContext context) {    return Scaffold(      appBar: AppBar(        title: Text(ref.read(appNameProvider)),        backgroundColor: Colors.blue,      ),      body: SingleChildScrollView(        child: Center(          child: Container(            padding: const EdgeInsets.all(30.0),            child: Column(              crossAxisAlignment: CrossAxisAlignment.start,              children: <Widget>[                Padding(                  padding:                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),                  child: TextFormField(                    controller: userNameCtl,                    decoration: const InputDecoration(                      labelText: 'ユーザー名を入力         初期値 : marie',                    ),                    //確定時判定                    onChanged: (String value) {                      // userNameCtl.text = value;                      userNameCtl.selection = TextSelection.fromPosition(                        TextPosition(offset: userNameCtl.text.length),                      );                      ref.read(userNameProvider.notifier).state = value;                      // debugPrint(userNameCtl.text);                    },                  ),                ),                Padding(                  padding:                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),                  child: TextFormField(                    controller: passwordCtl,                    obscureText: _isObscure,                    //確定時判定                    onChanged: (String value) {                      // userNameCtl.text = value;                      passwordCtl.selection = TextSelection.fromPosition(                        TextPosition(offset: passwordCtl.text.length),                      );                      ref.read(userPassProvider.notifier).state = value;                      // debugPrint(userNameCtl.text);                    },                    decoration: InputDecoration(                      labelText: 'パスワード         初期値 : 01',                      suffixIcon: IconButton(                        icon: Icon(_isObscure                            ? Icons.visibility_off                            : Icons.visibility),                        onPressed: () {                          setState(                            () {                              _isObscure = !_isObscure;                            },                          );                        },                      ),                    ),                  ),                ),                Center(                  child: ElevatedButton(                      onPressed:                          // userNameCtl.text.isEmpty || passwordCtl.text.isEmpty                          ref.watch(userPassProvider) == "" ||                                  ref.watch(userNameProvider) == ""                              ? null                              : () {                                  //todo  管理者権限の場合　AppTop()、　他Userの場合　シフト関連画面へ繊維 todo動的に修正要す                                  if ((ref.watch(userNameProvider) == "marie" &&                                          ref.watch(userPassProvider) ==                                              "01") ||                                      (ref.watch(userNameProvider) == "kei" &&                                          ref.watch(userPassProvider) ==                                              "02")) {                                    Navigator.push(                                      context,                                      MaterialPageRoute(                                          builder: (context) => const AppTop()),                                    );                                  }                                  // else if () {                                  //todo   その他Userの場合は通知確認、打刻画面へ遷移　commonUserTop()                                  // }                                  else {                                    //todo   エラー通知                                  }                                },                      child: const Text('ログイン')),                ),              ],            ),          ),        ),      ),    );  }}