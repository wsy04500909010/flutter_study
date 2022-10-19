import 'package:flutter/material.dart';

import '../res/ListData.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyIcon(),
    );
  }
}

class MyIcon extends StatelessWidget {
  MyIcon({super.key}) {
    print(listData);
  }

  List<Widget> _initListData() {
    // 第一种用for循环
    // List<Widget> templist = [];
    // for (var i = 0; i < listData.length; i++) {
    //   templist.add(ListTile(
    //     title: Text("${listData[i]["title"]}"),
    //     subtitle: Text("${listData[i]["author"]}"),
    //     leading: Image.network("${listData[i]["imageUrl"]}"),
    //   ));
    // }
    // return templist;

    // 第二种用map循环
    var tempList = listData.map((value) {
      return ListTile(
        title: Text("${value["title"]}"),
        subtitle: Text("${value["author"]}"),
        leading: Image.network("${value["imageUrl"]}"),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("动态listview"),
      ),
      body: ListView(
        children: _initListData(),
      ),
    );
  }
}
