import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import '../../../../../../providers.dart';class ActiveMember extends ConsumerWidget {  const ActiveMember({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    return Column(      children: [        Padding(          padding: const EdgeInsets.only(top: 5, left: 30.0),          // padding: const EdgeInsets.only(left: 130.0),          child: Row(            children: [              const Text("active"),              const Icon(                Icons.people_outline,              ),              //  ループテキスト              // todo 稼働高い人材　赤色、黄色、白              Column(                children: [                  for (final activeMember in ref.read(activeMemberProvider))                    //稼働中メンバー                    Text(                      activeMember,                      style: const TextStyle(                          fontSize: 16,                          fontWeight: FontWeight.bold,                          color: Colors.tealAccent),                    ),                ],              ),              const Padding(                padding: EdgeInsets.only(left: 50.0),                child: Text("standBy"),              ),              const Icon(                Icons.emoji_people,              ),              Column(                children: [                  for (final standByMember in ref.read(standByMemberProvider))                    //待機中メンバー                    Text(                      standByMember,                      style: const TextStyle(                          fontWeight: FontWeight.normal, color: Colors.yellow),                    ),                ],              ),            ],          ),        ),      ],    );  }}