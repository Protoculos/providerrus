import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text('data'),
        ),
      ),
      body: Center(
        child: Widget1(),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  Widget1();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget2(),
    );
  }
}

class Widget2 extends StatelessWidget {
  Widget2();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text('Widget2'),
          ),
          Widget3(),
        ],
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  Widget3();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
    );
  }
}

class MyTextFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newData) => {},
    );
  }
}
