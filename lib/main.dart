import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String data = 'Top level data 777';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(data: data),
    );
  }
}

class HomePage extends StatelessWidget {
  final String data;
  const HomePage({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(data),
        ),
      ),
      body: Center(
        child: Widget1(data: data),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  final String data;
  const Widget1({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget2(data: data),
    );
  }
}

class Widget2 extends StatelessWidget {
  final String data;
  const Widget2({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text('Widget2'),
          ),
          Widget3(data: data),
        ],
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  final String data;
  const Widget3({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(data),
    );
  }
}
