import 'package:flutter/material.dart';

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
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  List<String> list = [];

  MyListView({super.key}) {
    for (var i = 0; i < 20; i++) {
      list.add("我是第${i}条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("动态listview"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index]),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}
