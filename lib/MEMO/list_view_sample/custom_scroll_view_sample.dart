import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'horizontal_list_liew.dart';
import '../../view/view_widget/common_widget/parts/list/image_urls_sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('グルメ'),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              HorizontalListView(
                title: '人気',
                children: _topGourmet,
              ),
              HorizontalListView(
                title: '新着',
                children: _topGourmet.reversed.toList(),
              ),
              HorizontalListView(
                title: '最近',
                children: _topGourmet,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: ImageUrls.onlineUserList.length,
                itemBuilder: (_, int index) {
                  return Card(
                    child: Image.network(
                      ImageUrls.onlineUserList[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ],
          ))
        ],
      ),
    );
  }

  List<Widget> get _topGourmet => List.generate(
      ImageUrls.onlineUserList.length,
      (index) => Image.network(
            ImageUrls.onlineUserList[index],
            fit: BoxFit.cover,
          ));
}
