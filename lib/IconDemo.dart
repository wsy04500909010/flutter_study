import 'package:flutter/material.dart';
import 'Font.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyIcon(),
    );
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("widget.title"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.ac_unit_outlined,
              size: 30,
              color: Colors.amber,
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              DemoFont.book,
              size: 40,
              color: Colors.orange,
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              DemoFont.wechat,
              size: 40,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              DemoFont.study,
              size: 40,
              color: Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              DemoFont.school,
              size: 40,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
    return Column();
  }
}
