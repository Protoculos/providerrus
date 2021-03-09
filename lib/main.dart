import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = 'TopLevel1 Data 1111';

  void _onChangeState(newData) {
    setState(() {
      data = newData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        data: data,
        onChange: _onChangeState,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String data;
  final Function onChange;
  const HomePage({Key key, @required this.data, @required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(data),
        ),
      ),
      body: Center(
        child: Widget1(
          data: data,
          onChange: onChange,
        ),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  final String data;
  final Function onChange;
  const Widget1({Key key, @required this.data, @required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget2(
        data: data,
        onChange: onChange,
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  final String data;
  final Function onChange;
  const Widget2({Key key, @required this.data, @required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyTextFiled(
            onChange: onChange,
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

class MyTextFiled extends StatelessWidget {
  final Function onChange;
  const MyTextFiled({Key key, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newData) => onChange(newData),
    );
  }
}
