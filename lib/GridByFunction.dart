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
      home: const MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  List<Widget> _initGridData() {
    List<Widget> list = [];
    for (var i = 0; i < 18; i++) {
      list.add(Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.green),
        child: Text(
          "我是一条数据",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("gridview"),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
        children: _initGridData(),
      ),
    );
  }
}
